# getmovielist-doc
This documentation will guide the support and development of the application.


Requirements Documentation

Header Bar (Present on all pages)

    -> Movie Search Form;
    -> Button that calls modal for authentication or registration;
    -> Logout button;
    -> Select your country;

Home Page

    -> List Movies, Paging by Scroll;

Movie Search Page

    -> List of Movies Found in Search;

Selected Movie Page;

    -> photos, providers, credits;

Selected Person;

    -> Movie List Where it is Credited;

User Page;

    -> Bookmark and watched list;
    -> Filtering Options(Favorites/Watched);


Data Modeling

user: {
    id,
    name,
    email,
    login,
    password, 
    level
}
movie : {
    id, 
    id_themoviedb, 
    original_title, 
    release_date
    poster_path
}

bookmark : {
    id,
    id_movie,
    id_user
}

watched : {
    id,
    id_movie, 
    id_user
}






<a href="https://github.com/getmovielist/getmovielist-doc/modelling.json">Detailed Data Modeling</a>


<a href="https://github.com/getmovielist/getmovielist-doc/diagram.png">Data Base Diagram</a>


<a href="https://github.com/getmovielist/getmovielist-doc/create.sql">SQL CREATE</a>
