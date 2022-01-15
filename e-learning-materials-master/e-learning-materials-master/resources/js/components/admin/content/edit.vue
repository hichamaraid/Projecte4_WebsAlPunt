<template>
<div>
       <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row justify-content-center">
          <div class="col-md-9">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Update Content</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" @submit.prevent = 'contentEdit' enctype="multipart/form-data">
                <div class="card-body">
                    <div class="row">
                        <div class="col-7 right-border">
                            
                             <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Content Title</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1" v-model="title" placeholder="Enter Title"
                                        name="title">
                                         <div v-if = "errors && errors.title">{{errors.title[0]}}</div>
                                    </div>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    

                                    <div class="form-group">
                                    <label for="exampleInputEmail1">Description</label>
                                     <ckeditor :editor="editor" name= "description" v-model="description" :config="editorConfig"></ckeditor>
                                    <div v-if = "errors && errors.description">{{errors.description[0]}}</div>
                                    </div>
                                </div>

                            </div>

                        </div>

                        <div class="col-md-5">

                             <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Upload File</label>
                                       
                                  <input type="file" name="file" class="form-control" id="inputFileUpload" @change = "getFile"
                                  >
                                     <div v-if = "errors && errors.file">{{errors.file[0]}}</div>
                                        
                                    </div>

                                    
                                </div>

                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                   <div class="form-group">
                                        <label for="exampleInputEmail1">Video Url</label>
                                        <input type="text" class="form-control" id="exampleInputEmail1" v-model="video_url" placeholder="Enter Url"
                                         name="video_url">
                                         <div v-if = "errors && errors.video_url">{{errors.video_url[0]}}</div>
                                    </div>
                                </div>

                            </div>

                             <div class="row">
                                <div class="col-md-12">
                                   <div class="card-footer text-center">
                                    <button type="submit" class="btn btn-sm btn-primary">Submit</button>
                                    <button type="submit" @click="goBack" class="btn btn-sm btn-danger">Back</button>
                                    </div>
                                </div>

                            </div>
                            
                            
                        </div>
                    </div>
                  
                </div>
                <!-- /.card-body -->

               
              </form>
            </div>
          
          </div>
           </div>
          <!-- /.col -->
    
      </div><!--/. container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  
</template>

<script>
import ClassicEditor from '@ckeditor/ckeditor5-build-classic';
export default {
  name: "Save",

  mounted(){
      this.$store.dispatch('getCategoryList')
    //   this.$store.dispatch('getSubCategoryList')
    },
    created(){
        axios.get('/subCategoryList').then((response)=>{
            this.subCategory = response.data.subCategoryList;
        })
        axios.get('/contentById/'+this.$route.params.contentId).then((response)=>{
            this.category_id = response.data.contentById.category_id
            this.subCategory_id = response.data.contentById.subCategory_id
            this.title = response.data.contentById.title
            this.description = response.data.contentById.description
            this.video_url = response.data.contentById.video_url
           
            // this.form.fill(response.data.subCategoryById)
        })
    },
    computed:{
      getCategoryList(){
       
        return this.$store.getters.categoryList
      },
   
    },


  data () {
    return {
       subCategory:[],
       category_id:'',
       subCategory_id:'',
       title:'',
       description:'',
       file:'',
       video_url:'',
       errors:{},
     
      editor: ClassicEditor,
            editorData: '<p>Rich-text editor content.</p>',
            editorConfig: {
                // The configuration of the rich-text editor.
            },
     
    }
  },

  methods: {

    getSubCategory(){
      
       axios.get('/getSubCategoryByCategoryId/'+this.category_id).then((response)=>{
            this.subCategory = response.data.subCategoryList;
        })
    },

    getFile(e){
        this.file = e.target.files[0];
        if(this.file.size >2097152){
          Swal.fire({
          icon: 'error',
          title: 'Oops...',
          text: 'File is Larger than 2MB !',
          
        })
        
        }
    },
    
    contentEdit () {
      // Submit the form via a POST request
     let form = new FormData;
     form.append('file',this.file);
     form.append('category_id',this.category_id);
     form.append('subCategory_id',this.subCategory_id);
     form.append('title',this.title);
     form.append('description',this.description);
     form.append('video_url',this.video_url);
      
      axios.post(`/contentUpdate/${this.$route.params.contentId}`,form)
        .then((response) => {
           this.$router.push('/content');
           Toast.fire({
            icon: 'success',
            title: 'Content updated successfully'
          })
           
       }).catch(error=>{
          this.errors = error.response.data.errors;
       });
    },

    goBack(){
      this.$router.push('/content');
    },

  }

}
</script>

<style>
 .right-border{
     border-right:1px solid black;
 }
</style>