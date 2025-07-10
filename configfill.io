<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MenStyle - Fashion Store</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="nav-left">
            <div class="nav-brand">
                <i class="fas fa-tshirt"></i>
                MenStyle
            </div>
            <div class="search-container">
                <i class="fas fa-search search-icon"></i>
                <input type="text" id="searchInput" placeholder="Search for products...">
            </div>
        </div>
        <div class="nav-right">
            <button id="cartBtn" class="nav-btn">
                <i class="fas fa-shopping-cart"></i>
                <span id="cartCount">0</span>
            </button>
            <button id="authBtn" class="nav-btn">
                <i class="fas fa-user"></i>
                <span>Login</span>
            </button>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Elevate Your Style</h1>
            <p>Discover the latest trends in men's fashion</p>
        </div>
    </section>

    <!-- Main Content -->
    <main>
        <!-- Category Filter -->
        <div class="category-filter">
            <button class="filter-btn active" data-category="all">
                <i class="fas fa-border-all"></i>
                All
            </button>
            <button class="filter-btn" data-category="shirts">
                <i class="fas fa-tshirt"></i>
                Shirts
            </button>
            <button class="filter-btn" data-category="suits">
                <i class="fas fa-user-tie"></i>
                Suits
            </button>
            <button class="filter-btn" data-category="watches">
                <i class="fas fa-clock"></i>
                Watches
            </button>
        </div>

        <!-- Products Grid -->
        <div id="productsGrid" class="products-grid"></div>
    </main>

    <!-- Modals -->
    <div id="loginModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2><i class="fas fa-sign-in-alt"></i> Login</h2>
                <button class="close-btn">&times;</button>
            </div>
            <form id="loginForm">
                <div class="form-group">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" required>
                </div>
                <button type="submit" class="submit-btn">Login</button>
            </form>
            <p>Don't have an account? <a href="#" id="showSignup">Sign up</a></p>
        </div>
    </div>

    <div id="signupModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2><i class="fas fa-user-plus"></i> Sign Up</h2>
                <button class="close-btn">&times;</button>
            </div>
            <form id="signupForm">
                <div class="form-group">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Full Name" required>
                </div>
                <div class="form-group">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email" required>
                </div>
                <div class="form-group">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Password" required>
                </div>
                <button type="submit" class="submit-btn">Sign Up</button>
            </form>
            <p>Already have an account? <a href="#" id="showLogin">Login</a></p>
        </div>
    </div>

    <div id="cartModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2><i class="fas fa-shopping-cart"></i> Shopping Cart</h2>
                <button class="close-btn">&times;</button>
            </div>
            <div id="cartItems"></div>
            <div class="cart-total">
                <span>Total:</span>
                <span id="cartTotal">$0.00</span>
            </div>
            <button id="proceedToPaymentBtn" class="submit-btn">
                <i class="fas fa-credit-card"></i>
                Proceed to Payment
            </button>
        </div>
    </div>

    <!-- Payment Modal -->
    <div id="paymentModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2><i class="fas fa-credit-card"></i> Payment</h2>
                <button class="close-btn">&times;</button>
            </div>
            <div class="payment-content">
                <!-- Payment Methods -->
                <div class="payment-methods">
                    <h3>Select Payment Method</h3>
                    <div class="payment-method-options">
                        <label class="payment-method-option">
                            <input type="radio" name="paymentMethod" value="credit" checked>
                            <span class="method-icon">
                                <i class="fas fa-credit-card"></i>
                            </span>
                            <span>Credit Card</span>
                        </label>
                        <label class="payment-method-option">
                            <input type="radio" name="paymentMethod" value="paypal">
                            <span class="method-icon">
                                <i class="fab fa-paypal"></i>
                            </span>
                            <span>PayPal</span>
                        </label>
                        <label class="payment-method-option">
                            <input type="radio" name="paymentMethod" value="apple">
                            <span class="method-icon">
                                <i class="fab fa-apple-pay"></i>
                            </span>
                            <span>Apple Pay</span>
                        </label>
                    </div>
                </div>

                <!-- Credit Card Form -->
                <form id="creditCardForm" class="payment-form">
                    <div class="form-group">
                        <label>Card Number</label>
                        <div class="card-input-group">
                            <i class="fas fa-credit-card"></i>
                            <input type="text" id="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19" required>
                            <div class="card-type-icon">
                                <i class="fab fa-cc-visa"></i>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group">
                            <label>Expiry Date</label>
                            <div class="card-input-group">
                                <i class="fas fa-calendar-alt"></i>
                                <input type="text" id="expiryDate" placeholder="MM/YY" maxlength="5" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>CVV</label>
                            <div class="card-input-group">
                                <i class="fas fa-lock"></i>
                                <input type="text" id="cvv" placeholder="123" maxlength="3" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Card Holder Name</label>
                        <div class="card-input-group">
                            <i class="fas fa-user"></i>
                            <input type="text" id="cardHolder" placeholder="John Doe" required>
                        </div>
                    </div>
                </form>

                <!-- PayPal Form -->
                <div id="paypalForm" class="payment-form" style="display: none;">
                    <div class="paypal-info">
                        <i class="fab fa-paypal"></i>
                        <p>You will be redirected to PayPal to complete your payment.</p>
                    </div>
                </div>

                <!-- Apple Pay Form -->
                <div id="applePayForm" class="payment-form" style="display: none;">
                    <div class="apple-pay-info">
                        <i class="fab fa-apple-pay"></i>
                        <p>Complete your purchase with Apple Pay.</p>
                    </div>
                </div>

                <!-- Order Summary -->
                <div class="order-summary">
                    <h3>Order Summary</h3>
                    <div class="summary-row">
                        <span>Subtotal</span>
                        <span id="summarySubtotal">$0.00</span>
                    </div>
                    <div class="summary-row">
                        <span>Shipping</span>
                        <span id="summaryShipping">$5.99</span>
                    </div>
                    <div class="summary-row">
                        <span>Tax</span>
                        <span id="summaryTax">$0.00</span>
                    </div>
                    <div class="summary-row total">
                        <span>Total</span>
                        <span id="summaryTotal">$0.00</span>
                    </div>
                </div>

                <button id="confirmPaymentBtn" class="submit-btn">
                    <i class="fas fa-lock"></i>
                    Pay Now
                </button>
            </div>
        </div>
    </div>

    <!-- Profile Dropdown -->
    <div id="profileDropdown" class="profile-dropdown">
        <div class="profile-header">
            <i class="fas fa-user-circle"></i>
            <span id="profileName"></span>
        </div>
        <div class="profile-menu">
            <a href="#" class="profile-item">
                <i class="fas fa-shopping-bag"></i>
                My Orders
            </a>
            <a href="#" class="profile-item">
                <i class="fas fa-heart"></i>
                Wishlist
            </a>
            <a href="#" class="profile-item">
                <i class="fas fa-cog"></i>
                Settings
            </a>
            <hr>
            <a href="#" class="profile-item" id="logoutBtn">
                <i class="fas fa-sign-out-alt"></i>
                Logout
            </a>
        </div>
    </div>

    <!-- Scripts -->
    <script src="js/data.js"></script>
    <script src="js/cart.js"></script>
    <script src="js/login.js"></script>
    <script src="js/signup.js"></script>
    <script src="js/payment.js"></script>
    <script src="js/app.js"></script>
</body>
</html> 
/* Global Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
}

:root {
    --primary-color: #2c3e50;
    --secondary-color: #3498db;
    --accent-color: #e74c3c;
    --text-color: #2c3e50;
    --light-gray: #ecf0f1;
    --dark-gray: #7f8c8d;
    --white: #ffffff;
    --shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    --transition: all 0.3s ease;
}

body {
    background-color: var(--light-gray);
    color: var(--text-color);
}

/* Navbar */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 2rem;
    background-color: var(--white);
    box-shadow: var(--shadow);
    position: fixed;
    top: 0;
    left: 0;
    right: 0;
    z-index: 1000;
}

.nav-left {
    display: flex;
    align-items: center;
    gap: 2rem;
}

.nav-brand {
    font-size: 1.5rem;
    font-weight: bold;
    color: var(--primary-color);
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.nav-brand i {
    color: var(--secondary-color);
}

.search-container {
    position: relative;
    width: 300px;
}

.search-icon {
    position: absolute;
    left: 1rem;
    top: 50%;
    transform: translateY(-50%);
    color: var(--dark-gray);
}

#searchInput {
    width: 100%;
    padding: 0.75rem 1rem 0.75rem 2.5rem;
    border: 1px solid var(--light-gray);
    border-radius: 25px;
    font-size: 0.9rem;
    transition: var(--transition);
}

#searchInput:focus {
    outline: none;
    border-color: var(--secondary-color);
    box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
}

.nav-right {
    display: flex;
    gap: 1rem;
}

.nav-btn {
    padding: 0.5rem 1rem;
    border: none;
    border-radius: 25px;
    background-color: transparent;
    color: var(--primary-color);
    cursor: pointer;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    transition: var(--transition);
}

.nav-btn:hover {
    background-color: var(--light-gray);
}

#cartBtn {
    position: relative;
}

#cartCount {
    position: absolute;
    top: -5px;
    right: -5px;
    background-color: var(--accent-color);
    color: var(--white);
    font-size: 0.7rem;
    padding: 0.2rem 0.5rem;
    border-radius: 10px;
}

/* Hero Section */
.hero {
    height: 60vh;
    background: linear-gradient(rgba(44, 62, 80, 0.7), rgba(44, 62, 80, 0.7)),
                url('https://images.unsplash.com/photo-1441984904996-e0b6ba687e04?auto=format&fit=crop&q=80&w=2000') center/cover;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: var(--white);
    margin-top: 60px;
}

.hero-content h1 {
    font-size: 3rem;
    margin-bottom: 1rem;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
}

.hero-content p {
    font-size: 1.2rem;
    opacity: 0.9;
}

/* Category Filter */
.category-filter {
    display: flex;
    justify-content: center;
    gap: 1rem;
    padding: 2rem;
    background-color: var(--white);
    margin: 2rem;
    border-radius: 10px;
    box-shadow: var(--shadow);
}

.filter-btn {
    padding: 0.75rem 1.5rem;
    border: none;
    border-radius: 25px;
    background-color: var(--light-gray);
    color: var(--text-color);
    cursor: pointer;
    transition: var(--transition);
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.filter-btn i {
    font-size: 1.1rem;
}

.filter-btn:hover {
    transform: translateY(-2px);
}

.filter-btn.active {
    background-color: var(--secondary-color);
    color: var(--white);
}

/* Products Grid */
.products-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    gap: 2rem;
    padding: 2rem;
}

.product-card {
    background-color: var(--white);
    border-radius: 10px;
    overflow: hidden;
    box-shadow: var(--shadow);
    transition: var(--transition);
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.product-image {
    width: 100%;
    height: 300px;
    object-fit: cover;
}

.product-info {
    padding: 1.5rem;
}

.product-name {
    font-size: 1.1rem;
    margin-bottom: 0.5rem;
    color: var(--primary-color);
}

.product-price {
    color: var(--secondary-color);
    font-size: 1.2rem;
    font-weight: bold;
    margin-bottom: 1rem;
}

.add-to-cart {
    width: 100%;
    padding: 0.75rem;
    border: none;
    background-color: var(--primary-color);
    color: var(--white);
    border-radius: 25px;
    cursor: pointer;
    transition: var(--transition);
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
}

.add-to-cart:hover {
    background-color: var(--secondary-color);
}

/* Modal */
.modal {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: 1100;
}

.modal.active {
    display: flex;
    justify-content: center;
    align-items: center;
}

.modal-content {
    background-color: var(--white);
    padding: 0;
    border-radius: 10px;
    width: 90%;
    max-width: 500px;
    box-shadow: var(--shadow);
}

.modal-header {
    padding: 1.5rem;
    border-bottom: 1px solid var(--light-gray);
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.modal-header h2 {
    margin: 0;
    display: flex;
    align-items: center;
    gap: 0.5rem;
    color: var(--primary-color);
}

.close-btn {
    background: none;
    border: none;
    font-size: 1.5rem;
    cursor: pointer;
    color: var(--dark-gray);
}

.form-group {
    position: relative;
    margin-bottom: 1rem;
}

.form-group i {
    position: absolute;
    left: 1rem;
    top: 50%;
    transform: translateY(-50%);
    color: var(--dark-gray);
}

.modal-content form {
    padding: 1.5rem;
}

.modal-content input {
    width: 100%;
    padding: 0.75rem 1rem 0.75rem 2.5rem;
    border: 1px solid var(--light-gray);
    border-radius: 25px;
    font-size: 0.9rem;
    transition: var(--transition);
}

.modal-content input:focus {
    outline: none;
    border-color: var(--secondary-color);
    box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
}

.submit-btn {
    width: 100%;
    padding: 0.75rem;
    border: none;
    background-color: var(--secondary-color);
    color: var(--white);
    border-radius: 25px;
    cursor: pointer;
    transition: var(--transition);
    font-size: 1rem;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
}

.submit-btn:hover {
    background-color: var(--primary-color);
}

/* Cart Items */
.cart-item {
    display: flex;
    align-items: center;
    gap: 1rem;
    padding: 1rem 1.5rem;
    border-bottom: 1px solid var(--light-gray);
}

.cart-item img {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 8px;
}

.cart-item-info {
    flex: 1;
}

.cart-item-info h3 {
    margin-bottom: 0.5rem;
    color: var(--primary-color);
}

.quantity-controls {
    display: flex;
    align-items: center;
    gap: 0.5rem;
}

.quantity-controls button {
    padding: 0.25rem 0.5rem;
    border: 1px solid var(--light-gray);
    background-color: var(--white);
    border-radius: 4px;
    cursor: pointer;
    transition: var(--transition);
}

.quantity-controls button:hover {
    background-color: var(--light-gray);
}

.cart-total {
    display: flex;
    justify-content: space-between;
    padding: 1.5rem;
    font-weight: bold;
    font-size: 1.2rem;
    color: var(--primary-color);
}

/* Profile Dropdown */
.profile-dropdown {
    display: none;
    position: absolute;
    top: 70px;
    right: 2rem;
    background-color: var(--white);
    border-radius: 10px;
    box-shadow: var(--shadow);
    width: 250px;
    z-index: 1000;
}

.profile-dropdown.active {
    display: block;
}

.profile-header {
    padding: 1.5rem;
    border-bottom: 1px solid var(--light-gray);
    display: flex;
    align-items: center;
    gap: 1rem;
}

.profile-header i {
    font-size: 2rem;
    color: var(--secondary-color);
}

.profile-menu {
    padding: 1rem 0;
}

.profile-item {
    display: flex;
    align-items: center;
    gap: 0.75rem;
    padding: 0.75rem 1.5rem;
    color: var(--text-color);
    text-decoration: none;
    transition: var(--transition);
}

.profile-item:hover {
    background-color: var(--light-gray);
}

.profile-item i {
    color: var(--dark-gray);
}

hr {
    border: none;
    border-top: 1px solid var(--light-gray);
    margin: 0.5rem 0;
}

/* Payment Styles */
.payment-content {
    padding: 1.5rem;
}

.payment-methods {
    margin-bottom: 2rem;
}

.payment-methods h3 {
    color: var(--primary-color);
    margin-bottom: 1rem;
}

.payment-method-options {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(120px, 1fr));
    gap: 1rem;
}

.payment-method-option {
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 1rem;
    border: 2px solid var(--light-gray);
    border-radius: 10px;
    cursor: pointer;
    transition: var(--transition);
}

.payment-method-option input[type="radio"] {
    display: none;
}

.payment-method-option input[type="radio"]:checked + .method-icon {
    color: var(--secondary-color);
}

.payment-method-option input[type="radio"]:checked + .method-icon + span {
    color: var(--secondary-color);
}

.payment-method-option:has(input[type="radio"]:checked) {
    border-color: var(--secondary-color);
    background-color: rgba(52, 152, 219, 0.1);
}

.method-icon {
    font-size: 2rem;
    color: var(--dark-gray);
    margin-bottom: 0.5rem;
}

.payment-form {
    margin-top: 2rem;
}

.form-row {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 1rem;
}

.card-input-group {
    position: relative;
    margin-top: 0.5rem;
}

.card-input-group i {
    position: absolute;
    left: 1rem;
    top: 50%;
    transform: translateY(-50%);
    color: var(--dark-gray);
}

.card-input-group input {
    width: 100%;
    padding: 0.75rem 2.5rem;
    border: 1px solid var(--light-gray);
    border-radius: 25px;
    font-size: 0.9rem;
    transition: var(--transition);
}

.card-input-group input:focus {
    outline: none;
    border-color: var(--secondary-color);
    box-shadow: 0 0 0 2px rgba(64, 132, 177, 0.2);
}

.card-type-icon {
    position: absolute;
    right: 1rem;
    top: 50%;
    transform: translateY(-50%);
    color: var(--dark-gray);
}

.paypal-info,
.apple-pay-info {
    text-align: center;
    padding: 2rem;
    background-color: var(--light-gray);
    border-radius: 10px;
}

.paypal-info i,
.apple-pay-info i {
    font-size: 3rem;
    color: var(--primary-color);
    margin-bottom: 1rem;
}

.order-summary {
    margin-top: 2rem;
    padding: 1.5rem;
    background-color: var(--light-gray);
    border-radius: 10px;
}

.order-summary h3 {
    color: var(--primary-color);
    margin-bottom: 1rem;
}

.summary-row {
    display: flex;
    justify-content: space-between;
    padding: 0.5rem 0;
    color: var(--dark-gray);
}

.summary-row.total {
    border-top: 1px solid var(--dark-gray);
    margin-top: 0.5rem;
    padding-top: 1rem;
    font-weight: bold;
    color: var(--primary-color);
    font-size: 1.1rem;
}

#confirmPaymentBtn {
    margin-top: 2rem;
}

/* Product Card Enhancements */
.product-image-container {
    position: relative;
    overflow: hidden;
}

.sale-badge {
    position: absolute;
    top: 10px;
    right: 10px;
    background-color: var(--accent-color);
    color: var(--white);
    padding: 0.5rem 1rem;
    border-radius: 20px;
    font-weight: bold;
    font-size: 0.9rem;
}

.stock-warning {
    position: absolute;
    bottom: 10px;
    left: 10px;
    background-color: rgba(231, 76, 60, 0.9);
    color: var(--white);
    padding: 0.5rem 1rem;
    border-radius: 20px;
    font-size: 0.8rem;
}

.product-rating {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    margin: 0.5rem 0;
}

.stars {
    color: #f1c40f;
}

.rating-value {
    font-weight: bold;
    color: var(--primary-color);
}

.review-count {
    color: var(--dark-gray);
    font-size: 0.9rem;
}

.product-description {
    color: var(--dark-gray);
    font-size: 0.9rem;
    margin: 0.5rem 0;
    line-height: 1.4;
}

.product-price-container {
    margin: 1rem 0;
}

.original-price {
    text-decoration: line-through;
    color: var(--dark-gray);
    margin-right: 0.5rem;
}

.sale-price {
    color: var(--accent-color);
    font-weight: bold;
    font-size: 1.1rem;
}

.view-details {
    width: 100%;
    padding: 0.75rem;
    border: 1px solid var(--primary-color);
    background-color: transparent;
    color: var(--primary-color);
    border-radius: 25px;
    cursor: pointer;
    transition: var(--transition);
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 0.5rem;
    margin-top: 0.5rem;
}

.view-details:hover {
    background-color: var(--primary-color);
    color: var(--white);
}

/* Product Modal Styles */
.product-modal .modal-content {
    max-width: 900px;
    max-height: 90vh;
    overflow-y: auto;
}

.product-details {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 2rem;
    padding: 1.5rem;
}

.product-image-large img {
    width: 100%;
    height: auto;
    border-radius: 10px;
}

.product-info-detailed {
    display: flex;
    flex-direction: column;
    gap: 1rem;
}

.product-meta {
    background-color: var(--light-gray);
    padding: 1rem;
    border-radius: 10px;
}

.product-meta p {
    margin: 0.5rem 0;
    color: var(--dark-gray);
}

/* Reviews Styles */
.product-reviews {
    padding: 1.5rem;
    border-top: 1px solid var(--light-gray);
}

.product-reviews h3 {
    margin-bottom: 1.5rem;
    color: var(--primary-color);
}

.reviews-container {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
    max-height: 400px;
    overflow-y: auto;
    padding-right: 1rem;
}

.review {
    background-color: var(--light-gray);
    padding: 1rem;
    border-radius: 10px;
}

.review-header {
    display: flex;
    align-items: center;
    gap: 1rem;
    margin-bottom: 0.5rem;
}

.reviewer-name {
    font-weight: bold;
    color: var(--primary-color);
}

.review-date {
    color: var(--dark-gray);
    font-size: 0.9rem;
}

.review-comment {
    color: var(--text-color);
    line-height: 1.4;
}

.add-review {
    margin-top: 2rem;
    padding-top: 1.5rem;
    border-top: 1px solid var(--light-gray);
}

.add-review h4 {
    margin-bottom: 1rem;
    color: var(--primary-color);
}

.rating-input {
    margin-bottom: 1rem;
}

.star-rating {
    display: flex;
    flex-direction: row-reverse;
    gap: 0.5rem;
}

.star-rating input {
    display: none;
}

.star-rating label {
    cursor: pointer;
    color: var(--dark-gray);
    font-size: 1.5rem;
    transition: var(--transition);
}

.star-rating label:hover,
.star-rating label:hover ~ label,
.star-rating input:checked ~ label {
    color: #f1c40f;
}

.login-prompt {
    text-align: center;
    padding: 2rem;
    background-color: var(--light-gray);
    border-radius: 10px;
    margin-top: 1rem;
}

.login-prompt a {
    color: var(--secondary-color);
    text-decoration: none;
    font-weight: bold;
}

textarea {
    width: 100%;
    min-height: 100px;
    padding: 0.75rem;
    border: 1px solid var(--light-gray);
    border-radius: 10px;
    resize: vertical;
    font-family: inherit;
}

textarea:focus {
    outline: none;
    border-color: var(--secondary-color);
    box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
}

/* Responsive Design */
@media (max-width: 768px) {
    .nav-left {
        gap: 1rem;
    }

    .search-container {
        width: 200px;
    }

    .hero-content h1 {
        font-size: 2rem;
    }

    .category-filter {
        flex-wrap: wrap;
    }

    .products-grid {
        grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    }
}

@media (max-width: 480px) {
    .navbar {
        padding: 1rem;
    }

    .nav-brand span {
        display: none;
    }

    .search-container {
        width: 150px;
    }

    .hero {
        height: 50vh;
    }

    .modal-content {
        width: 95%;
    }

    .form-row {
        grid-template-columns: 1fr;
    }

    .payment-method-options {
        grid-template-columns: 1fr;
    }
}

/* Responsive Product Details */
@media (max-width: 768px) {
    .product-details {
        grid-template-columns: 1fr;
    }

    .product-image-large {
        max-width: 500px;
        margin: 0 auto;
    }

    .review-header {
        flex-wrap: wrap;
    }
} 
const products = [
    {
        id: 1,
        name: "Classic White Shirt",
        price: 49.99,
        category: "shirts",
        image: "https://images.unsplash.com/photo-1603252109303-2751441dd157?auto=format&fit=crop&q=80&w=500",
        description: "Premium cotton dress shirt with a modern fit. Perfect for formal occasions or business wear.",
        rating: 4.5,
        reviews: [
            { user: "John D.", rating: 5, comment: "Excellent quality and fit!", date: "2024-03-15" },
            { user: "Mike R.", rating: 4, comment: "Good shirt, but slightly tight in shoulders", date: "2024-03-10" }
        ],
        stock: 15,
        sale: false
    },
    {
        id: 2,
        name: "Navy Blue Suit",
        price: 299.99,
        category: "suits",
        image: "https://images.unsplash.com/photo-1594938298603-c8148c4dae35?auto=format&fit=crop&q=80&w=500",
        description: "Tailored navy suit in Italian wool. Features a modern cut with subtle pinstripes.",
        rating: 4.8,
        reviews: [
            { user: "Robert K.", rating: 5, comment: "Perfect fit and excellent material!", date: "2024-03-12" },
            { user: "David M.", rating: 4.5, comment: "Great suit for business meetings", date: "2024-03-08" }
        ],
        stock: 8,
        sale: true,
        salePrice: 249.99
    },
    {
        id: 3,
        name: "Leather Watch",
        price: 199.99,
        category: "watches",
        image: "https://images.unsplash.com/photo-1524592094714-0f0654e20314?auto=format&fit=crop&q=80&w=500",
        description: "Classic leather strap watch with chronograph features. Water-resistant up to 50m.",
        rating: 4.7,
        reviews: [
            { user: "Tom H.", rating: 5, comment: "Beautiful timepiece, very elegant", date: "2024-03-14" },
            { user: "James L.", rating: 4.5, comment: "Great quality for the price", date: "2024-03-09" }
        ],
        stock: 12,
        sale: false
    },
    {
        id: 4,
        name: "Denim Shirt",
        price: 59.99,
        category: "shirts",
        image: "https://images.unsplash.com/photo-1589310243389-96a5483213a8?auto=format&fit=crop&q=80&w=500",
        description: "Casual denim shirt made from premium Japanese denim. Perfect for a relaxed weekend look.",
        rating: 4.3,
        reviews: [
            { user: "Chris P.", rating: 4, comment: "Good casual shirt, runs slightly large", date: "2024-03-13" },
            { user: "Alex W.", rating: 4.5, comment: "Great quality denim", date: "2024-03-07" }
        ],
        stock: 20,
        sale: true,
        salePrice: 44.99
    },
    {
        id: 5,
        name: "Gray Suit",
        price: 279.99,
        category: "suits",
        image: "https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?auto=format&fit=crop&q=80&w=500",
        description: "Modern slim-fit gray suit in all-season wool blend. Perfect for any formal occasion.",
        rating: 4.6,
        reviews: [
            { user: "William B.", rating: 5, comment: "Perfect fit and great style", date: "2024-03-11" },
            { user: "George R.", rating: 4, comment: "Good quality but needed alterations", date: "2024-03-06" }
        ],
        stock: 10,
        sale: false
    },
    {
        id: 6,
        name: "Smart Watch",
        price: 299.99,
        category: "watches",
        image: "https://images.unsplash.com/photo-1579586337278-3befd40fd17a?auto=format&fit=crop&q=80&w=500",
        description: "Modern smartwatch with fitness tracking, heart rate monitoring, and smartphone notifications.",
        rating: 4.4,
        reviews: [
            { user: "Peter M.", rating: 4, comment: "Great features but battery life could be better", date: "2024-03-15" },
            { user: "Sam K.", rating: 5, comment: "Perfect fitness companion!", date: "2024-03-08" }
        ],
        stock: 15,
        sale: false
    }
]; 
// Current filter state
let currentCategory = 'all';
let searchQuery = '';

function generateStarRating(rating) {
    const fullStars = Math.floor(rating);
    const hasHalfStar = rating % 1 >= 0.5;
    const emptyStars = 5 - Math.ceil(rating);
    
    let stars = '';
    for (let i = 0; i < fullStars; i++) {
        stars += '<i class="fas fa-star"></i>';
    }
    if (hasHalfStar) {
        stars += '<i class="fas fa-star-half-alt"></i>';
    }
    for (let i = 0; i < emptyStars; i++) {
        stars += '<i class="far fa-star"></i>';
    }
    return stars;
}

function filterProducts(products) {
    return products.filter(product => {
        const matchesCategory = currentCategory === 'all' || product.category === currentCategory;
        const matchesSearch = product.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
                            product.category.toLowerCase().includes(searchQuery.toLowerCase()) ||
                            product.description.toLowerCase().includes(searchQuery.toLowerCase());
        return matchesCategory && matchesSearch;
    });
}

function displayProducts(products) {
    const productsGrid = document.getElementById('productsGrid');
    const filteredProducts = filterProducts(products);

    if (filteredProducts.length === 0) {
        productsGrid.innerHTML = `
            <div class="no-results">
                <i class="fas fa-search"></i>
                <h2>No products found</h2>
                <p>Try adjusting your search or filter criteria</p>
            </div>
        `;
        return;
    }

    productsGrid.innerHTML = filteredProducts.map(product => `
        <div class="product-card">
            <div class="product-image-container">
                <img class="product-image" src="${product.image}" alt="${product.name}">
                ${product.sale ? `<span class="sale-badge">SALE</span>` : ''}
                ${product.stock < 10 ? `<span class="stock-warning">Only ${product.stock} left!</span>` : ''}
            </div>
            <div class="product-info">
                <h3 class="product-name">${product.name}</h3>
                <div class="product-rating">
                    <div class="stars">
                        ${generateStarRating(product.rating)}
                    </div>
                    <span class="rating-value">${product.rating.toFixed(1)}</span>
                    <span class="review-count">(${product.reviews.length} reviews)</span>
                </div>
                <p class="product-description">${product.description}</p>
                <div class="product-price-container">
                    ${product.sale 
                        ? `<p class="product-price">
                            <span class="original-price">$${product.price.toFixed(2)}</span>
                            <span class="sale-price">$${product.salePrice.toFixed(2)}</span>
                           </p>`
                        : `<p class="product-price">$${product.price.toFixed(2)}</p>`
                    }
                </div>
                <button class="add-to-cart" onclick="cart.addItem(${JSON.stringify(product)})">
                    <i class="fas fa-shopping-cart"></i>
                    Add to Cart
                </button>
                <button class="view-details" onclick="showProductDetails(${product.id})">
                    <i class="fas fa-info-circle"></i>
                    View Details
                </button>
            </div>
        </div>
    `).join('');
}

function showProductDetails(productId) {
    const product = products.find(p => p.id === productId);
    if (!product) return;

    const modal = document.createElement('div');
    modal.className = 'modal product-modal';
    modal.innerHTML = `
        <div class="modal-content">
            <div class="modal-header">
                <h2>${product.name}</h2>
                <button class="close-btn">&times;</button>
            </div>
            <div class="product-details">
                <div class="product-image-large">
                    <img src="${product.image}" alt="${product.name}">
                </div>
                <div class="product-info-detailed">
                    <div class="product-rating">
                        <div class="stars">
                            ${generateStarRating(product.rating)}
                        </div>
                        <span class="rating-value">${product.rating.toFixed(1)}</span>
                        <span class="review-count">(${product.reviews.length} reviews)</span>
                    </div>
                    <p class="product-description">${product.description}</p>
                    <div class="product-meta">
                        <p><strong>Category:</strong> ${product.category}</p>
                        <p><strong>Stock:</strong> ${product.stock} units</p>
                    </div>
                    <div class="product-price-container">
                        ${product.sale 
                            ? `<p class="product-price">
                                <span class="original-price">$${product.price.toFixed(2)}</span>
                                <span class="sale-price">$${product.salePrice.toFixed(2)}</span>
                               </p>`
                            : `<p class="product-price">$${product.price.toFixed(2)}</p>`
                        }
                    </div>
                    <button class="add-to-cart" onclick="cart.addItem(${JSON.stringify(product)})">
                        <i class="fas fa-shopping-cart"></i>
                        Add to Cart
                    </button>
                </div>
            </div>
            <div class="product-reviews">
                <h3>Customer Reviews</h3>
                <div class="reviews-container">
                    ${product.reviews.map(review => `
                        <div class="review">
                            <div class="review-header">
                                <span class="reviewer-name">${review.user}</span>
                                <div class="review-rating">
                                    ${generateStarRating(review.rating)}
                                </div>
                                <span class="review-date">${review.date}</span>
                            </div>
                            <p class="review-comment">${review.comment}</p>
                        </div>
                    `).join('')}
                </div>
                ${isLoggedIn() ? `
                    <div class="add-review">
                        <h4>Add Your Review</h4>
                        <form id="reviewForm" onsubmit="submitReview(event, ${product.id})">
                            <div class="rating-input">
                                <label>Your Rating:</label>
                                <div class="star-rating">
                                    ${[5,4,3,2,1].map(num => `
                                        <input type="radio" id="star${num}" name="rating" value="${num}">
                                        <label for="star${num}"><i class="far fa-star"></i></label>
                                    `).join('')}
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Your Review:</label>
                                <textarea name="comment" required></textarea>
                            </div>
                            <button type="submit" class="submit-btn">
                                <i class="fas fa-paper-plane"></i>
                                Submit Review
                            </button>
                        </form>
                    </div>
                ` : `
                    <p class="login-prompt">Please <a href="#" onclick="document.getElementById('loginModal').classList.add('active')">login</a> to leave a review.</p>
                `}
            </div>
        </div>
    `;

    document.body.appendChild(modal);
    modal.classList.add('active');

    const closeBtn = modal.querySelector('.close-btn');
    closeBtn.addEventListener('click', () => {
        modal.remove();
    });

    modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            modal.remove();
        }
    });
}

function submitReview(event, productId) {
    event.preventDefault();
    const form = event.target;
    const rating = parseInt(form.rating.value);
    const comment = form.comment.value;
    const currentUser = JSON.parse(localStorage.getItem('currentUser'));

    if (!rating) {
        alert('Please select a rating');
        return;
    }

    const newReview = {
        user: currentUser.name,
        rating,
        comment,
        date: new Date().toISOString().split('T')[0]
    };

    const product = products.find(p => p.id === productId);
    if (product) {
        product.reviews.unshift(newReview);
        product.rating = product.reviews.reduce((sum, r) => sum + r.rating, 0) / product.reviews.length;
        displayProducts(products);
        const modal = event.target.closest('.modal');
        modal.remove();
    }
}

// Search functionality
const searchInput = document.getElementById('searchInput');
searchInput.addEventListener('input', (e) => {
    searchQuery = e.target.value;
    displayProducts(products);
});

// Event listeners for category filters
document.querySelectorAll('.filter-btn').forEach(button => {
    button.addEventListener('click', () => {
        document.querySelector('.filter-btn.active').classList.remove('active');
        button.classList.add('active');
        currentCategory = button.dataset.category;
        displayProducts(products);
    });
});

// Profile dropdown toggle
const authBtn = document.getElementById('authBtn');
const profileDropdown = document.getElementById('profileDropdown');

authBtn.addEventListener('click', (e) => {
    if (isLoggedIn()) {
        e.stopPropagation();
        profileDropdown.classList.toggle('active');
    } else {
        document.getElementById('loginModal').classList.add('active');
    }
});

// Close profile dropdown when clicking outside
document.addEventListener('click', (e) => {
    if (!profileDropdown.contains(e.target) && !authBtn.contains(e.target)) {
        profileDropdown.classList.remove('active');
    }
});

// Update profile name
function updateProfileName() {
    const profileName = document.getElementById('profileName');
    const currentUser = JSON.parse(localStorage.getItem('currentUser'));
    if (currentUser) {
        profileName.textContent = currentUser.name;
    }
}

// Close modals when clicking the close button
document.querySelectorAll('.close-btn').forEach(btn => {
    btn.addEventListener('click', () => {
        btn.closest('.modal').classList.remove('active');
    });
});

// Initialize
displayProducts(products);
updateProfileName(); 
class Payment {
    constructor() {
        this.bindEvents();
        this.currentMethod = 'credit';
    }

    bindEvents() {
        // Payment method selection
        document.querySelectorAll('input[name="paymentMethod"]').forEach(radio => {
            radio.addEventListener('change', (e) => this.handlePaymentMethodChange(e));
        });

        // Credit card number formatting
        document.getElementById('cardNumber').addEventListener('input', (e) => {
            let value = e.target.value.replace(/\D/g, '');
            value = value.replace(/(\d{4})/g, '$1 ').trim();
            e.target.value = value;
            this.updateCardType(value);
        });

        // Expiry date formatting
        document.getElementById('expiryDate').addEventListener('input', (e) => {
            let value = e.target.value.replace(/\D/g, '');
            if (value.length >= 2) {
                value = value.slice(0, 2) + '/' + value.slice(2);
            }
            e.target.value = value;
        });

        // CVV validation
        document.getElementById('cvv').addEventListener('input', (e) => {
            e.target.value = e.target.value.replace(/\D/g, '');
        });

        // Form submission
        document.getElementById('confirmPaymentBtn').addEventListener('click', () => this.handlePayment());

        // Switch to payment from cart
        document.getElementById('proceedToPaymentBtn').addEventListener('click', () => this.showPaymentModal());
    }

    handlePaymentMethodChange(e) {
        this.currentMethod = e.target.value;
        
        // Hide all forms
        document.querySelectorAll('.payment-form').forEach(form => {
            form.style.display = 'none';
        });

        // Show selected form
        const selectedForm = document.getElementById(`${this.currentMethod}Form`);
        if (selectedForm) {
            selectedForm.style.display = 'block';
        }
    }

    updateCardType(number) {
        const cardTypeIcon = document.querySelector('.card-type-icon i');
        // Simple card type detection based on first digit
        const firstDigit = number.charAt(0);
        
        if (firstDigit === '4') {
            cardTypeIcon.className = 'fab fa-cc-visa';
        } else if (firstDigit === '5') {
            cardTypeIcon.className = 'fab fa-cc-mastercard';
        } else if (firstDigit === '3') {
            cardTypeIcon.className = 'fab fa-cc-amex';
        } else {
            cardTypeIcon.className = 'fas fa-credit-card';
        }
    }

    showPaymentModal() {
        // Hide cart modal
        document.getElementById('cartModal').classList.remove('active');
        
        // Update order summary
        this.updateOrderSummary();
        
        // Show payment modal
        document.getElementById('paymentModal').classList.add('active');
    }

    updateOrderSummary() {
        const subtotal = cart.getTotal();
        const shipping = 5.99;
        const tax = subtotal * 0.1; // 10% tax

        document.getElementById('summarySubtotal').textContent = `$${subtotal.toFixed(2)}`;
        document.getElementById('summaryShipping').textContent = `$${shipping.toFixed(2)}`;
        document.getElementById('summaryTax').textContent = `$${tax.toFixed(2)}`;
        document.getElementById('summaryTotal').textContent = `$${(subtotal + shipping + tax).toFixed(2)}`;
    }

    validateCreditCard() {
        const cardNumber = document.getElementById('cardNumber').value.replace(/\s/g, '');
        const expiryDate = document.getElementById('expiryDate').value;
        const cvv = document.getElementById('cvv').value;
        const cardHolder = document.getElementById('cardHolder').value;

        if (cardNumber.length < 16) {
            alert('Please enter a valid card number');
            return false;
        }

        if (!expiryDate.match(/^(0[1-9]|1[0-2])\/([0-9]{2})$/)) {
            alert('Please enter a valid expiry date (MM/YY)');
            return false;
        }

        if (cvv.length < 3) {
            alert('Please enter a valid CVV');
            return false;
        }

        if (cardHolder.trim().length < 3) {
            alert('Please enter the card holder name');
            return false;
        }

        return true;
    }

    async handlePayment() {
        if (!isLoggedIn()) {
            alert('Please login to complete your purchase');
            document.getElementById('paymentModal').classList.remove('active');
            document.getElementById('loginModal').classList.add('active');
            return;
        }

        switch (this.currentMethod) {
            case 'credit':
                if (!this.validateCreditCard()) {
                    return;
                }
                break;
            case 'paypal':
                // Redirect to PayPal
                alert('Redirecting to PayPal...');
                return;
            case 'apple':
                // Handle Apple Pay
                alert('Processing Apple Pay...');
                return;
        }

        // Simulate payment processing
        const confirmPaymentBtn = document.getElementById('confirmPaymentBtn');
        confirmPaymentBtn.disabled = true;
        confirmPaymentBtn.innerHTML = '<i class="fas fa-spinner fa-spin"></i> Processing...';

        try {
            // Simulate API call
            await new Promise(resolve => setTimeout(resolve, 2000));

            // Clear cart
            cart.items = [];
            cart.saveCart();
            cart.updateCartCount();

            // Show success message
            alert('Payment successful! Thank you for your purchase.');
            
            // Close modal and reset form
            document.getElementById('paymentModal').classList.remove('active');
            document.getElementById('creditCardForm').reset();
        } catch (error) {
            alert('Payment failed. Please try again.');
        } finally {
            confirmPaymentBtn.disabled = false;
            confirmPaymentBtn.innerHTML = '<i class="fas fa-lock"></i> Pay Now';
        }
    }
}

// Initialize payment
const payment = new Payment(); 
function signup(name, email, password) {
    const users = JSON.parse(localStorage.getItem('users')) || [];
    
    // Check if user already exists
    if (users.some(user => user.email === email)) {
        return false;
    }

    // Add new user
    users.push({ name, email, password });
    localStorage.setItem('users', JSON.stringify(users));
    
    // Auto login after signup
    currentUser = { email, name };
    localStorage.setItem('currentUser', JSON.stringify(currentUser));
    updateAuthButton();
    
    return true;
}

// Event Listeners
document.getElementById('signupForm').addEventListener('submit', (e) => {
    e.preventDefault();
    const name = e.target.querySelector('input[type="text"]').value;
    const email = e.target.querySelector('input[type="email"]').value;
    const password = e.target.querySelector('input[type="password"]').value;

    if (signup(name, email, password)) {
        document.getElementById('signupModal').classList.remove('active');
        e.target.reset();
    } else {
        alert('Email already exists');
    }
});

document.getElementById('showLogin').addEventListener('click', (e) => {
    e.preventDefault();
    document.getElementById('signupModal').classList.remove('active');
    document.getElementById('loginModal').classList.add('active');
}); 



