<ul>
    @foreach($menus as $menu)
      <li>{{ $menu->name }}
        @if($menu->sub_menu->count() > 0)
           <ul>
           @foreach($menu->sub_menu as $sub)
               <li{{ $sub->name}}</li>
           @endforeach
           </ul>
       @endif
     </li>
   @endforeach
</ul>
