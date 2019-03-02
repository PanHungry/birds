function addFields() {
    var container = document.getElementById("addForm");

    var x = document.getElementById("addForm").childElementCount;

    container.insertAdjacentHTML('beforeend',`
<div class="row mt-3">
    <div class="form-group col-md">
        <label for="speciesInput0">Gatunek:</label>
        <input type="text" class="form-control autoCompleteInput" id="speciesInput${x}" name="speciesInput${x}" placeholder="Wpisz gatunek" >
        <div id="responsespeciesInput${x}"></div>
    </div>
    <div class="form-group col-md">
        <label for="locationInput0">Lokalizacja:</label>
        <input type="text" class="form-control " id="locationInput${x}" name="locationInput${x}">
    </div>
    <div class="form-group col-md">
        <label for="dateInput0">Data:</label>
        <input type="date" class="form-control " id="dateInput${x}" name="dateInput${x}">
    </div>
</div>`)
}

