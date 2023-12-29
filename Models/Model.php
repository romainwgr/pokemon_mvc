<?php

class Model
{
    /**
     * Attribut contenant l'instance PDO
     */
    private $bd;
    private $privkey;
    private $publickey;


    /**
     * Attribut statique qui contiendra l'unique instance de Model
     */
    private static $instance = null;

    /**
     * Constructeur : effectue la connexion à la base de données.
     */
    private function __construct()
    {
        include "credentials.php";
        $this->bd = new PDO($dsn, $login, $mdp);
        $this->bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->bd->query("SET NAMES 'utf8'");
        $this->privkey =file_get_contents("C:\\Users\\1000r\\private_key.pem");
        $this->publickey=file_get_contents("C:\\Users\\1000r\\public_key.pem");
    }

    /**
     * Méthode permettant de récupérer un modèle car le constructeur est privé (Implémentation du Design Pattern Singleton)
     */
    public static function getModel()
    {
        if (self::$instance === null) {
            self::$instance = new self();
        }
        return self::$instance;
    }

    /**
     * Retourne 5 premières personnes
     * @return [array] Contient les informations des personnes
     */
    public function checkEmail($mail){
        $requete = $this->bd->prepare('SELECT * FROM users WHERE email = :mail');
        $requete->bindValue(':mail',$mail,PDO::PARAM_STR);
        $requete->execute();
        $result= $requete->fetch(PDO::FETCH_ASSOC);
        return $result !== false;
    }
    public function newAccount($mail,$prenom,$mdp){
        
        //Cryptage du mot de passe
        $cle_publique = openssl_get_publickey($this->publickey);
        

        //$encodé=base64_encode($mdp);
        openssl_public_encrypt($mdp, $mdpchiffre,$cle_publique);
        $mdpchiffre=base64_encode($mdpchiffre);
        
         //Préparation de la requête
         $requete = $this->bd->prepare('INSERT INTO users (email, password, prenom) VALUES (:mail,:mdpchiffre,:prenom)');
         $requete->bindValue(":mail",$mail, PDO::PARAM_STR);
         $requete->bindValue(":mdpchiffre",$mdpchiffre,PDO::PARAM_STR);
         $requete->bindValue(":prenom",$prenom,PDO::PARAM_STR);

 
         //Exécution de la requête
         $requete->execute();
         return (bool) $requete->rowCount();
 
         
     }
    
    public function getPokemons()
    {
        $req = $this->bd->prepare('SELECT * FROM pokemons');
        $req->execute();
        return $req->fetchall();
    }
    public function getPokemonsPower(){
        $req = $this->bd->prepare('SELECT * FROM pokemon ORDER BY total DESC');
        $req->execute();
        return $req->fetchall();
    }
    
    public function connect($mail, $motdepasse) {
        // Préparation de la requête pour récupérer le mot de passe chiffré
        $req = $this->bd->prepare("SELECT password FROM users WHERE email = :email");
        $req->bindValue(':email', $mail, PDO::PARAM_STR);
        $req->execute();
    
        // Récupération du mot de passe chiffré
        $result = $req->fetch(PDO::FETCH_ASSOC);
    
        if ($result) {
            // Décodage et déchiffrement du mot de passe
            $passwordChiffre = base64_decode($result['password']);
            openssl_private_decrypt($passwordChiffre, $passwordDechiffre, $this->privkey);
    
            // Comparaison du mot de passe déchiffré avec celui fourni
            if ($passwordDechiffre === $motdepasse) {
                // Si les mots de passe correspondent
                return true;
            }
        }
        return false;
    }
    
    

     
     /**
     * Fonction pour récupérer des Pokémon triés selon une colonne spécifique.
     * @param string $columnName Nom de la colonne pour le tri.
     * @param string $order 'ASC' pour un tri ascendant, 'DESC' pour un tri descendant.
     * @return array Résultats triés.
     */
    public function getPokemonsTrier($columnName, $order = 'ASC') {
        $columns = ['id', 'name', 'type1', 'type2', 'total', 'hp', 'attack', 'defense', 'sp_atk', 'sp_def', 'speed', 'generation'];
        $orders = ['ASC', 'DESC'];

        // Vérifier si le nom de colonne et l'ordre sont valides
        if (!in_array($columnName, $columns) || !in_array($order, $orders)) {
            throw new InvalidArgumentException("Invalid column name or sort order");
        }

        $stmt = $this->bd->prepare("SELECT * FROM pokemons ORDER BY $columnName $order");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}