<?php
/**
 * Created by PhpStorm.
 * User: Rémi
 * Date: 21/02/2019
 * Time: 10:34
 */

function Send_Message(){
    require "Views/php/SendMsg.php";
}

function Send_Message_Check(){
    require "Views/php/SendMsgVerif.php";
}

function Inscription(){
    require "Views/php/Inscription.php";
}

function Connexion(){
    require "Views/php/Connexion.php";
    include "Views/html/footer.html";
}

function Accueil(){
    require "Views/php/Accueil.php";
}

function Espace_Entreprise(){
    require "Views/html/EspaceEntreprise.html";
}

?>