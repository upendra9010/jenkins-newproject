<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
    --bg:#f4f7fb;
    --primary:#0a2540;
    --accent:#0077ff;
    --accent2:#00c6ff;
    --card:#fff;
    --radius:14px;
}

body{
    margin:0;
    font-family:Poppins;
    background:var(--bg);
}

/* HEADER */
header{
    position:sticky;
    top:0;
    backdrop-filter:blur(10px);
    background:rgba(255,255,255,0.7);
    padding:15px 40px;
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand{
    font-size:22px;
    font-weight:700;
}
.brand span{color:var(--accent)}

.search{
    background:#fff;
    padding:8px 15px;
    border-radius:30px;
    box-shadow:0 4px 15px rgba(0,0,0,0.05);
}
.search input{
    border:none;
    outline:none;
}

/* HERO */
.hero{
    text-align:center;
    padding:80px 20px;
    color:white;
    background:linear-gradient(135deg,#0a2540,#0077ff);
}

.hero h1{font-size:42px}

/* BUTTON */
.btn{
    padding:12px 22px;
    border:none;
    border-radius:30px;
    cursor:pointer;
}
.btn-primary{
    background:linear-gradient(135deg,#0077ff,#00c6ff);
    color:white;
}

/* GRID */
.grid{
    display:grid;
    gap:20px;
    padding:40px;
}

/* PRODUCTS */
.products{
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
}

.product{
    background:white;
    border-radius:14px;
    overflow:hidden;
    box-shadow:0 10px 25px rgba(0,0,0,0.05);
    transition:.3s;
}
.product:hover{
    transform:translateY(-8px);
}

.product img{
    width:100%;
    height:220px;
    object-fit:cover;
}

.product-body{
    padding:15px;
}

.price{
    font-weight:700;
}

.add-btn{
    width:100%;
    padding:10px;
    border:none;
    border-radius:8px;
    background:linear-gradient(135deg,#0a2540,#0077ff);
    color:white;
    cursor:pointer;
}

/* CATEGORY */
.categories{
    grid-template-columns:repeat(auto-fit,minmax(150px,1fr));
}

.cat-card{
    background:white;
    padding:20px;
    text-align:center;
    border-radius:14px;
    transition:.3s;
}
.cat-card:hover{
    background:linear-gradient(135deg,#0077ff,#00c6ff);
    color:white;
}

/* FOOTER */
footer{
    text-align:center;
    padding:30px;
    color:#777;
}
</style>
</head>

<body>

<header>
<div class="brand">Nexus<span>Shop</span></div>

<div class="search">
<input type="text" id="searchInput" placeholder="Search...">
</div>

<div>
<i class="fas fa-shopping-cart"></i>
<span id="cartCount">0</span>
</div>
</header>

<section class="hero">
<h1>Premium Shopping Experience</h1>
<p>Modern UI with smooth design</p>
<button class="btn btn-primary">Shop Now</button>
</section>

<!-- Categories -->
<div class="grid categories" id="categoriesGrid"></div>

<!-- Products -->
<div class="grid products" id="productsGrid"></div>

<footer>
© 2026 NexusShop
</footer>

<script>
const CATEGORIES=[
{id:'phones',name:'Phones',icon:'fa-mobile'},
{id:'laptops',name:'Laptops',icon:'fa-laptop'},
{id:'clothes',name:'Clothing',icon:'fa-tshirt'}
];

const PRODUCTS=[
{id:1,title:'iPhone 14',price:999,img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb'},
{id:2,title:'MacBook',price:1999,img:'https://images.unsplash.com/photo-1593642632823'},
{id:3,title:'Headphones',price:299,img:'https://images.unsplash.com/photo-1600185365483'}
];

let cart=0;

/* Categories */
function renderCategories(){
const grid=document.getElementById('categoriesGrid');
CATEGORIES.forEach(c=>{
grid.innerHTML+=`
<div class="cat-card">
<i class="fas ${c.icon}"></i>
<h4>${c.name}</h4>
</div>`;
});
}

/* Products */
function renderProducts(){
const grid=document.getElementById('productsGrid');
PRODUCTS.forEach(p=>{
grid.innerHTML+=`
<div class="product">
<img src="${p.img}">
<div class="product-body">
<h4>${p.title}</h4>
<div class="price">$${p.price}</div>
<button class="add-btn" onclick="addCart()">Add</button>
</div>
</div>`;
});
}

/* Cart */
function addCart(){
cart++;
document.getElementById('cartCount').innerText=cart;
}

/* Init */
renderCategories();
renderProducts();
</script>

</body>
</html>
