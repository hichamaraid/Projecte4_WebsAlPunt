<template>
    <div>
        <h1>Cursos</h1>
      <div>
          <ul class="list-group">

                        <li v-for="cur in cursos.name">
                            <div class="d-flex w-100 justify-content-between">
                                <p class="">{{ cur.name }}</p>
                            </div>
                        </li>
          </ul>
      </div>
    </div>
</template>




<script>

import axios from "axios";
export default{
         data() {
            return {
                cursos: []
            }
        },
        mounted() {
            let axi = this;
            axios.get('/categories.show')
            .then(function (response) {
                console.log(response);
                axi.cursos = response.data;
           
           })
        }
        }
</script>




<style>

</style>