<li class="nav-item">
    <a href="{{ route('categories.index') }}"
       class="nav-link {{ Request::is('categories*') ? 'active' : '' }}">
        <p>Categories</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('comments.index') }}"
       class="nav-link {{ Request::is('comments*') ? 'active' : '' }}">
        <p>Comments</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('courses.index') }}"
       class="nav-link {{ Request::is('courses*') ? 'active' : '' }}">
        <p>Courses</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('courseUsers.index') }}"
       class="nav-link {{ Request::is('courseUsers*') ? 'active' : '' }}">
        <p>Course Users</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('payments.index') }}"
       class="nav-link {{ Request::is('payments*') ? 'active' : '' }}">
        <p>Payments</p>
    </a>
</li>


