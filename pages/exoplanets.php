<table class="table table-striped">
    <thead>
        <tr>
            <th scope="col">Id</th>
            <th scope="col">Nom</th>
            <th scope="col">Masse</th>
            <th scope="col">Rayon</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $exoplanets = App\Tables\Exoplanet::getAll();
        // echo '<pre>';
        // var_dump($exoplanets);
        // echo '</pre>';
        foreach($exoplanets as $exoplanet):
        ?>

            <tr>
              <th scope="row"><?= $exoplanet->id; ?></th>
              <td><?= $exoplanet->nom; ?></td>
              <td><?= $exoplanet->masse; ?></td>
              <td><?= $exoplanet->id; ?></td>
            </tr>

        <?php endforeach; ?>

    </tbody>
</table>
