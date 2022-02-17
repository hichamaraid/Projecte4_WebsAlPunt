<template>
    <div>
        <h1>Cursos</h1>
      <div>
          <ul>
                <li v-for="cur in cursos.name">
                    <div>
                        <p>{{ cur.name }}</p>
                    </div>
                </li>
          </ul>
      </div>
    </div>
</template>




<script>
import axios from "axios"
export default{
         data() {
            return {
                cursos: []
            }
        },
        methods() {
            let axi = this;
            axios.get('/Controllers/welcomeAxios')
            .then(function (response) {
                console.log(response);
                axi.cursos = response.data;
           
           })
        }
    }
</script>




<style>
</style>