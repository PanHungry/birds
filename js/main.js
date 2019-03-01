function addFields() {
    var container = document.getElementById("addForm");

    var x = document.getElementById("addForm").childElementCount;
    console.log(x);

    container.insertAdjacentHTML('beforeend',`
<div class="row mt-5">
    <div class="form-group col-md">
        <label for="speciesInput0">Gatunek:</label>
        <input type="text" class="form-control ml-2" id="speciesInput${x}" name="speciesInput${x}">
    </div>
    <div class="form-group col-md">
        <label for="locationInput0">Lokalizacja:</label>
        <input type="text" class="form-control ml-2" id="locationInput${x}" name="locationInput${x}">
    </div>
    <div class="form-group col-md">
        <label for="dateInput0">Data:</label>
        <input type="date" class="form-control ml-2" id="dateInput${x}" name="dateInput${x}">
    </div>
</div>`)
}

