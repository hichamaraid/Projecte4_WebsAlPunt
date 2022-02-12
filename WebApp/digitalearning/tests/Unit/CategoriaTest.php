<?php

namespace Tests\Unit;

use Tests\TestCase;
use App\Models\Category;
use Illuminate\Database\Eloquent\Collection;

class CategoriaCursoTest extends TestCase
{
    public function Categoria_Tiene__Algun_Curso_Test()
    {
        $category = new Category;
        $this->assertInstanceOf(Collection::class, $category->courses);
    }
}
