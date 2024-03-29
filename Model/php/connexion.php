<?php



include "Model/php/log.php";

try {
    $bdd = new PDO('mysql:host=localhost;dbname=wecon', 'root', '');
}
catch(Exception $e) {
    die('Erreur : '.$e->getMessage());
}

$type = $_GET["type"];

if(isset($_POST['forminscription'])) {
    $mail = htmlspecialchars($_POST['mail']);
    $mdp = sha1($_POST['mdp']);
    $typeCompte=$_GET["type"];
    if(!empty($_POST['mail'])AND !empty($_POST['mdp'])) {
        $reqmail= $bdd->prepare("SELECT * FROM membres WHERE mail = ?");
        $reqmail->execute(array($mail));
        $mailexist = $reqmail->rowCount();
        if($mailexist != 0) {
            $requser = $bdd->prepare("SELECT * FROM membres WHERE mail = ? AND motdepasse = ? AND TypeCompte = ?");
            $requser->execute(array($mail, $mdp, $typeCompte));
            $userexist = $requser->rowCount();
            if ($userexist != 0) {
                $userinfo = $requser->fetch();
                $_SESSION['id'] = $userinfo['id'];
                $_SESSION['pseudo'] = $userinfo['pseudo'];
                $_SESSION['mail'] = $userinfo['mail'];
                $_SESSION['type'] = $type;
                $requsername = $bdd->prepare("SELECT * FROM nommembres WHERE Id_Membres =?");
                $requsername->execute(array($_SESSION['id']));
                $userinfoname = $requsername->fetch();
                $_SESSION['nom'] = $userinfoname['Nom'];
                $_SESSION['prenom'] = $userinfoname['Prenom'];
                header("Location: index.php?action=Espace_" . $type);
                sendLog("Pseudo : " . $_SESSION['pseudo'] . ", mail : " . $_SESSION['mail'] . ", type : " . $_SESSION['type'] . " s'est bien connecté à son compte");
            } else {
                $erreur = "Mot de passe incorrect";
                sendLog("mail : " . $mail . ", mdp : " . $mdp . " s'est trompé dans son mot de passe");
            }
        }
        else{
            $erreur = "Compte inexistant";
            sendLog("mail : " . $mail . "n'existe pas dans la bdd");
        }
    }
    else {
        $erreur = "Tous les champs doivent être complétés !";
    }
}
echo $erreur;
?>
