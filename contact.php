<?php require "config.php"; ?>
<?php require "foulder.php"; ?>
    <?php require "nav.php"; ?>
    <article>
    <form method="livre" action="receive.php">
        <fieldset>
        <fieldset>
            <legend>informations sur le client</legend>
        <label for="name">nom :</label>
        <input type="text" id="name" name="client_name" autofocus required><br>

        <input type="radio" id="part" name="client_type" value="Particulier">
        <label for="part">Particulier</label>

        <input type="radio" id="ent" name="client_type" value="Entreprise">
        <label for="ent">Entreprise</label>
        
        <br>

        <label for="mail">Courriel :</label>
        <input type="email" id="mail" name="client_mail" required><br>

        </fieldset>

        <label for="objets">les raisons :</label>
        <select>
            <option value="1y">engagement pour un projet</option>
            <option value="2y" selected>entretient pour un travail</option>
            <option value="5y">une explication</option>
        </select><br>

        <label for="addreq">Contenue du mail :</label><br>
        <textarea id="addreq" name="contenue" placeholder="Entrer ici le texte"></textarea><br>

        <button type="reset">reset</button>
        <button type="submit">Envoyer</button>
    </fieldset>
    </form>
</article>
</body>
</html>