@if(Auth::user()->role_id == 1)
<li class="nav-item">
    <a href="{{ route('categories.index') }}"
       class="nav-link {{ Request::is('categories*') ? 'active' : '' }}">
        <p>All Courses</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('courseUsers.index') }}"
       class="nav-link {{ Request::is('courseUsers*') ? 'active' : '' }}">
        <p>Subscriptions</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('courses.index') }}"
       class="nav-link {{ Request::is('courses*') ? 'active' : '' }}">
        <p>My Courses</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('comments.index') }}"
       class="nav-link {{ Request::is('comments*') ? 'active' : '' }}">
        <p>Comments</p>
    </a>
</li>



<li class="nav-item">
    <a href="{{ route('items.index') }}"
       class="nav-link {{ Request::is('items*') ? 'active' : '' }}">
        <p>Items</p>
    </a>
</li>



<li class="nav-item">
    <a href="{{ route('payments.index') }}"
       class="nav-link {{ Request::is('payments*') ? 'active' : '' }}">
        <p>Payments</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('users.index') }}"
       class="nav-link {{ Request::is('users*') ? 'active' : '' }}">
        <p>Users</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('views.index') }}"
       class="nav-link {{ Request::is('views*') ? 'active' : '' }}">
        <p>Views</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('roles.index') }}"
       class="nav-link {{ Request::is('roles*') ? 'active' : '' }}">
        <p>Roles</p>
    </a>
</li>

@endif





@if(Auth::user()->role_id == 2)

<li class="nav-item">
    <a href="{{ route('categories.index') }}"
       class="nav-link {{ Request::is('categories*') ? 'active' : '' }}">
        <p>All Courses</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('courseUsers.index') }}"
       class="nav-link {{ Request::is('courseUsers*') ? 'active' : '' }}">
        <p>Subscriptions</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('courses.index') }}"
       class="nav-link {{ Request::is('courses*') ? 'active' : '' }}">
        <p>My Courses</p>
    </a>
</li>


@endif




@if(Auth::user()->role_id == 3)

<li class="nav-item">
    <a href="{{ route('categories.index') }}"
       class="nav-link {{ Request::is('categories*') ? 'active' : '' }}">
        <p>All Courses</p>
    </a>
</li>

<li class="nav-item">
    <a href="{{ route('courseUsers.index') }}"
       class="nav-link {{ Request::is('courseUsers*') ? 'active' : '' }}">
        <p>Subscriptions</p>
    </a>
</li>

@endif

<li class="nav-item">
    <a href="{{ route('courses.index') }}"
       class="nav-link {{ Request::is('courses*') ? 'active' : '' }}">
        <p>Courses</p>
    </a>
</li>


<li class="nav-item">
    <a href="{{ route('coupons.index') }}"
       class="nav-link {{ Request::is('coupons*') ? 'active' : '' }}">
        <p>Coupons</p>
    </a>
</li>


