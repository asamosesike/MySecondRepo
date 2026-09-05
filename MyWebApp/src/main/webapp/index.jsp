<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Grace & Glory Church</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700;800&display=swap" rel="stylesheet">

    <style>
        :root {
            --purple: #6c3fc5;
            --dark-purple: #39206d;
            --gold: #f6b73c;
            --orange: #ff7a45;
            --pink: #e95d9d;
            --blue: #4b8df8;
            --cream: #fffaf1;
            --white: #ffffff;
            --dark: #21172f;
            --gray: #706979;
            --light-purple: #f2eaff;
            --shadow: 0 20px 60px rgba(52, 30, 88, .14);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: "DM Sans", sans-serif;
            color: var(--dark);
            background: var(--cream);
            overflow-x: hidden;
        }

        h1, h2, h3 {
            font-family: "Playfair Display", serif;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        button,
        input,
        select,
        textarea {
            font: inherit;
        }

        /* =========================
           NAVIGATION
        ========================== */

        nav {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            padding: 18px 5%;
            transition: .3s;
        }

        nav.scrolled {
            background: rgba(255, 250, 241, .94);
            backdrop-filter: blur(15px);
            box-shadow: 0 5px 25px rgba(0,0,0,.08);
        }

        .nav-inner {
            max-width: 1250px;
            margin: auto;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .logo {
            display: flex;
            align-items: center;
            gap: 10px;
            font-weight: 800;
            font-size: 1.25rem;
            color: white;
        }

        nav.scrolled .logo {
            color: var(--dark-purple);
        }

        .cross-logo {
            width: 43px;
            height: 43px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--gold), var(--orange));
            display: grid;
            place-items: center;
            color: white;
            font-size: 1.4rem;
            box-shadow: 0 5px 20px rgba(246,183,60,.35);
        }

        .nav-links {
            display: flex;
            gap: 28px;
            align-items: center;
            color: white;
            font-weight: 600;
            font-size: .92rem;
        }

        nav.scrolled .nav-links {
            color: var(--dark);
        }

        .nav-links a {
            transition: .25s;
        }

        .nav-links a:hover {
            color: var(--gold);
        }

        .login-btn {
            border: 0;
            padding: 11px 20px;
            border-radius: 30px;
            background: white;
            color: var(--purple);
            font-weight: 700;
            cursor: pointer;
            transition: .25s;
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(0,0,0,.15);
        }

        nav.scrolled .login-btn {
            background: var(--purple);
            color: white;
        }

        .menu-btn {
            display: none;
            background: none;
            border: none;
            color: white;
            font-size: 1.7rem;
            cursor: pointer;
        }

        nav.scrolled .menu-btn {
            color: var(--dark);
        }

        /* =========================
           HERO
        ========================== */

        .hero {
            min-height: 100vh;
            position: relative;
            overflow: hidden;
            display: flex;
            align-items: center;
            background:
                linear-gradient(90deg, rgba(39,18,74,.92), rgba(77,38,127,.66)),
                url("https://images.unsplash.com/photo-1438032005730-c779502df39b?auto=format&fit=crop&w=2000&q=85")
                center/cover;
            color: white;
        }

        .hero-content {
            max-width: 1250px;
            width: 90%;
            margin: auto;
            position: relative;
            z-index: 2;
            padding-top: 70px;
        }

        .eyebrow {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255,255,255,.15);
            border: 1px solid rgba(255,255,255,.25);
            backdrop-filter: blur(10px);
            padding: 9px 16px;
            border-radius: 30px;
            margin-bottom: 25px;
            font-weight: 600;
            font-size: .9rem;
        }

        .hero h1 {
            max-width: 780px;
            font-size: clamp(3.1rem, 7vw, 6.7rem);
            line-height: .98;
            margin-bottom: 25px;
        }

        .hero h1 span {
            color: var(--gold);
        }

        .hero p {
            max-width: 650px;
            font-size: 1.15rem;
            line-height: 1.8;
            color: rgba(255,255,255,.88);
            margin-bottom: 35px;
        }

        .hero-buttons {
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border: none;
            border-radius: 35px;
            padding: 15px 27px;
            cursor: pointer;
            font-weight: 700;
            transition: .3s;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--gold), var(--orange));
            color: white;
            box-shadow: 0 12px 30px rgba(255,122,69,.28);
        }

        .btn-primary:hover {
            transform: translateY(-4px);
            box-shadow: 0 17px 35px rgba(255,122,69,.4);
        }

        .btn-outline {
            border: 1px solid rgba(255,255,255,.5);
            color: white;
            background: rgba(255,255,255,.08);
        }

        .btn-outline:hover {
            background: white;
            color: var(--purple);
        }

        /* floating circles */

        .floating {
            position: absolute;
            border-radius: 50%;
            opacity: .3;
            animation: float 7s ease-in-out infinite;
        }

        .circle1 {
            width: 300px;
            height: 300px;
            background: var(--pink);
            right: -80px;
            top: 15%;
        }

        .circle2 {
            width: 180px;
            height: 180px;
            background: var(--gold);
            right: 25%;
            bottom: -60px;
            animation-delay: 1s;
        }

        .circle3 {
            width: 100px;
            height: 100px;
            background: var(--blue);
            left: 4%;
            top: 20%;
            animation-delay: 2s;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0) rotate(0); }
            50% { transform: translateY(-25px) rotate(10deg); }
        }

        /* =========================
           GENERAL
        ========================== */

        section {
            padding: 100px 5%;
        }

        .section-container {
            max-width: 1200px;
            margin: auto;
        }

        .section-heading {
            text-align: center;
            max-width: 720px;
            margin: 0 auto 60px;
        }

        .section-heading .label {
            color: var(--purple);
            text-transform: uppercase;
            letter-spacing: 2px;
            font-size: .78rem;
            font-weight: 800;
            margin-bottom: 10px;
        }

        .section-heading h2 {
            font-size: clamp(2.3rem, 5vw, 4rem);
            margin-bottom: 15px;
        }

        .section-heading p {
            color: var(--gray);
            line-height: 1.8;
        }

        /* =========================
           WELCOME
        ========================== */

        .welcome {
            background: white;
        }

        .welcome-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 70px;
            align-items: center;
        }

        .image-stack {
            position: relative;
            height: 560px;
        }

        .image-main {
            width: 80%;
            height: 88%;
            border-radius: 35px;
            object-fit: cover;
            box-shadow: var(--shadow);
        }

        .image-small {
            position: absolute;
            width: 48%;
            height: 43%;
            object-fit: cover;
            border-radius: 25px;
            right: 0;
            bottom: 0;
            border: 10px solid white;
            box-shadow: var(--shadow);
        }

        .verse-card {
            position: absolute;
            left: 20px;
            bottom: 35px;
            background: linear-gradient(135deg, var(--purple), var(--dark-purple));
            color: white;
            padding: 22px;
            border-radius: 20px;
            width: 250px;
            box-shadow: 0 20px 45px rgba(55,28,100,.3);
        }

        .verse-card strong {
            color: var(--gold);
            display: block;
            margin-bottom: 7px;
        }

        .welcome-copy h2 {
            font-size: clamp(2.4rem, 5vw, 4rem);
            line-height: 1.05;
            margin-bottom: 20px;
        }

        .welcome-copy h2 span {
            color: var(--purple);
        }

        .welcome-copy p {
            color: var(--gray);
            line-height: 1.9;
            margin-bottom: 20px;
        }

        .check-list {
            list-style: none;
            margin: 30px 0;
        }

        .check-list li {
            margin: 14px 0;
            display: flex;
            gap: 12px;
            align-items: center;
            font-weight: 600;
        }

        .check {
            width: 27px;
            height: 27px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: var(--light-purple);
            color: var(--purple);
        }

        /* =========================
           STATS
        ========================== */

        .stats {
            background: linear-gradient(135deg, var(--purple), var(--dark-purple));
            color: white;
            padding: 60px 5%;
        }

        .stats-grid {
            max-width: 1100px;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(4,1fr);
            gap: 30px;
            text-align: center;
        }

        .stat h3 {
            font-family: "DM Sans";
            font-size: 3rem;
            color: var(--gold);
        }

        .stat p {
            color: rgba(255,255,255,.75);
        }

        /* =========================
           WAYS TO JOIN
        ========================== */

        .join {
            background: var(--cream);
        }

        .join-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .join-card {
            background: white;
            border-radius: 25px;
            overflow: hidden;
            box-shadow: 0 10px 40px rgba(40,20,70,.08);
            transition: .35s;
        }

        .join-card:hover {
            transform: translateY(-10px);
            box-shadow: var(--shadow);
        }

        .join-img {
            height: 230px;
            width: 100%;
            object-fit: cover;
        }

        .join-content {
            padding: 28px;
        }

        .icon {
            width: 55px;
            height: 55px;
            display: grid;
            place-items: center;
            border-radius: 16px;
            background: var(--light-purple);
            font-size: 1.6rem;
            margin-bottom: 18px;
        }

        .join-content h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        .join-content p {
            color: var(--gray);
            line-height: 1.7;
            margin-bottom: 18px;
        }

        .text-link {
            color: var(--purple);
            font-weight: 800;
        }

        /* =========================
           TESTIMONIALS
        ========================== */

        .testimonials {
            background: white;
        }

        .testimonial-grid {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 25px;
        }

        .testimonial {
            padding: 32px;
            border-radius: 25px;
            background: linear-gradient(145deg, #fff, #f7f0ff);
            border: 1px solid #eee5ff;
            transition: .3s;
        }

        .testimonial:hover {
            transform: translateY(-7px);
        }

        .stars {
            color: var(--gold);
            letter-spacing: 3px;
            margin-bottom: 20px;
        }

        .testimonial p {
            color: var(--gray);
            line-height: 1.8;
            margin-bottom: 25px;
            font-style: italic;
        }

        .person {
            display: flex;
            align-items: center;
            gap: 13px;
        }

        .avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        .person strong {
            display: block;
        }

        .person span {
            font-size: .82rem;
            color: var(--gray);
        }

        /* =========================
           EVENTS
        ========================== */

        .events {
            background: #f4edff;
        }

        .event-grid {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 25px;
        }

        .event {
            background: white;
            border-radius: 25px;
            padding: 28px;
            box-shadow: 0 10px 35px rgba(50,30,80,.08);
        }

        .event-date {
            width: 60px;
            height: 65px;
            display: grid;
            place-items: center;
            text-align: center;
            border-radius: 15px;
            background: linear-gradient(135deg,var(--pink),var(--purple));
            color: white;
            float: left;
            margin-right: 18px;
        }

        .event-date strong {
            font-size: 1.4rem;
        }

        .event h3 {
            padding-top: 7px;
            font-size: 1.3rem;
        }

        .event p {
            clear: both;
            padding-top: 20px;
            color: var(--gray);
            line-height: 1.7;
        }

        /* =========================
           GIVING
        ========================== */

        .giving {
            position: relative;
            overflow: hidden;
            background:
                linear-gradient(110deg, rgba(57,32,109,.95), rgba(108,63,197,.9)),
                url("https://images.unsplash.com/photo-1507692049790-de58290a4334?auto=format&fit=crop&w=1800&q=80")
                center/cover;
            color: white;
        }

        .giving-grid {
            max-width: 1100px;
            margin: auto;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 70px;
            align-items: center;
        }

        .giving-copy h2 {
            font-size: clamp(2.4rem,5vw,4rem);
            margin-bottom: 20px;
        }

        .giving-copy p {
            line-height: 1.8;
            color: rgba(255,255,255,.8);
            margin-bottom: 30px;
        }

        .giving-options {
            display: grid;
            gap: 15px;
        }

        .give-option {
            padding: 22px;
            border: 1px solid rgba(255,255,255,.2);
            background: rgba(255,255,255,.1);
            border-radius: 18px;
            display: flex;
            align-items: center;
            gap: 15px;
            backdrop-filter: blur(10px);
        }

        .give-option-icon {
            width: 50px;
            height: 50px;
            border-radius: 15px;
            background: var(--gold);
            display: grid;
            place-items: center;
            font-size: 1.3rem;
        }

        .give-option h3 {
            font-family: "DM Sans";
            font-size: 1rem;
            margin-bottom: 4px;
        }

        .give-option p {
            margin: 0;
            font-size: .85rem;
        }

        .give-box {
            background: white;
            color: var(--dark);
            padding: 35px;
            border-radius: 30px;
            box-shadow: 0 25px 70px rgba(0,0,0,.2);
        }

        .give-box h3 {
            font-size: 2rem;
            margin-bottom: 8px;
        }

        .give-box > p {
            color: var(--gray);
            margin-bottom: 25px;
        }

        .amounts {
            display: grid;
            grid-template-columns: repeat(3,1fr);
            gap: 10px;
            margin-bottom: 15px;
        }

        .amount {
            padding: 13px;
            border: 1px solid #ddd;
            background: white;
            border-radius: 12px;
            cursor: pointer;
            font-weight: 700;
        }

        .amount.active,
        .amount:hover {
            background: var(--purple);
            color: white;
            border-color: var(--purple);
        }

        .form-input {
            width: 100%;
            padding: 15px;
            border-radius: 12px;
            border: 1px solid #ddd;
            margin-bottom: 13px;
            outline: none;
        }

        .form-input:focus {
            border-color: var(--purple);
        }

        /* =========================
           BIBLE
        ========================== */

        .bible {
            background: var(--cream);
            text-align: center;
            position: relative;
        }

        .bible-box {
            max-width: 900px;
            margin: auto;
            padding: 70px 30px;
            border-radius: 35px;
            background:
                linear-gradient(rgba(50,26,91,.88),rgba(50,26,91,.88)),
                url("https://images.unsplash.com/photo-1544531586-fde5298cdd40?auto=format&fit=crop&w=1600&q=80")
                center/cover;
            color: white;
            box-shadow: var(--shadow);
        }

        .bible-box .cross {
            font-size: 3rem;
            color: var(--gold);
            margin-bottom: 15px;
        }

        .bible-box h2 {
            font-size: clamp(2rem,4vw,3.5rem);
            margin-bottom: 20px;
        }

        .bible-box p {
            font-size: 1.15rem;
            line-height: 1.8;
            color: rgba(255,255,255,.88);
        }

        .reference {
            margin-top: 20px;
            color: var(--gold);
            font-weight: 800;
        }

        /* =========================
           FOOTER
        ========================== */

        footer {
            background: #21152f;
            color: white;
            padding: 70px 5% 25px;
        }

        .footer-grid {
            max-width: 1200px;
            margin: auto;
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 50px;
            padding-bottom: 50px;
        }

        footer h3 {
            margin-bottom: 20px;
            font-family: "DM Sans";
        }

        footer p,
        footer a {
            color: rgba(255,255,255,.62);
            line-height: 1.8;
        }

        footer a {
            display: block;
            margin-bottom: 8px;
            transition: .2s;
        }

        footer a:hover {
            color: var(--gold);
        }

        .socials {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .social {
            width: 38px;
            height: 38px;
            display: grid;
            place-items: center;
            border-radius: 50%;
            background: rgba(255,255,255,.1);
            transition: .3s;
        }

        .social:hover {
            background: var(--purple);
            transform: translateY(-3px);
        }

        .copyright {
            max-width: 1200px;
            margin: auto;
            padding-top: 25px;
            border-top: 1px solid rgba(255,255,255,.1);
            text-align: center;
            color: rgba(255,255,255,.4);
            font-size: .85rem;
        }

        /* =========================
           LOGIN MODAL
        ========================== */

        .modal {
            position: fixed;
            inset: 0;
            z-index: 2000;
            background: rgba(20,10,35,.7);
            backdrop-filter: blur(7px);
            display: none;
            place-items: center;
            padding: 20px;
        }

        .modal.show {
            display: grid;
        }

        .modal-box {
            width: 100%;
            max-width: 450px;
            background: white;
            border-radius: 30px;
            padding: 40px;
            position: relative;
            animation: modalIn .35s ease;
        }

        @keyframes modalIn {
            from {
                opacity: 0;
                transform: scale(.9) translateY(20px);
            }
            to {
                opacity: 1;
                transform: scale(1) translateY(0);
            }
        }

        .close-modal {
            position: absolute;
            right: 20px;
            top: 18px;
            border: 0;
            background: #f1ebf8;
            width: 35px;
            height: 35px;
            border-radius: 50%;
            cursor: pointer;
            font-size: 1.1rem;
        }

        .modal-box h2 {
            font-size: 2.3rem;
            margin-bottom: 8px;
        }

        .modal-box > p {
            color: var(--gray);
            margin-bottom: 25px;
        }

        /* =========================
           TOAST
        ========================== */

        .toast {
            position: fixed;
            bottom: 25px;
            right: 25px;
            z-index: 3000;
            background: #21152f;
            color: white;
            padding: 16px 22px;
            border-radius: 15px;
            box-shadow: var(--shadow);
            transform: translateY(120px);
            opacity: 0;
            transition: .4s;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================
           SCROLL ANIMATION
        ========================== */

        .reveal {
            opacity: 0;
            transform: translateY(35px);
            transition: opacity .8s ease, transform .8s ease;
        }

        .reveal.visible {
            opacity: 1;
            transform: translateY(0);
        }

        /* =========================
           MOBILE
        ========================== */

        @media(max-width: 900px) {

            .nav-links {
                position: absolute;
                top: 75px;
                left: 5%;
                right: 5%;
                background: white;
                color: var(--dark);
                padding: 25px;
                border-radius: 20px;
                box-shadow: var(--shadow);
                display: none;
                flex-direction: column;
                align-items: stretch;
            }

            .nav-links.active {
                display: flex;
            }

            .nav-links a {
                padding: 8px 0;
            }

            .menu-btn {
                display: block;
            }

            .hero h1 {
                font-size: 3.5rem;
            }

            .welcome-grid,
            .giving-grid {
                grid-template-columns: 1fr;
            }

            .join-grid,
            .testimonial-grid,
            .event-grid {
                grid-template-columns: 1fr 1fr;
            }

            .stats-grid {
                grid-template-columns: 1fr 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width: 600px) {

            section {
                padding: 75px 5%;
            }

            .hero {
                min-height: 800px;
            }

            .hero h1 {
                font-size: 3rem;
            }

            .hero p {
                font-size: 1rem;
            }

            .image-stack {
                height: 430px;
            }

            .join-grid,
            .testimonial-grid,
            .event-grid,
            .stats-grid,
            .footer-grid {
                grid-template-columns: 1fr;
            }

            .giving-grid {
                gap: 35px;
            }

            .amounts {
                grid-template-columns: repeat(3,1fr);
            }

            .modal-box {
                padding: 30px 22px;
            }
        }
    </style>
</head>

<body>

<!-- =========================
     NAVIGATION
========================== -->

<nav id="navbar">

    <div class="nav-inner">

        <a href="#home" class="logo">
            <span class="cross-logo">✝</span>
            Grace & Glory
        </a>

        <div class="nav-links" id="navLinks">
            <a href="#about">About</a>
            <a href="#join">Join Us</a>
            <a href="#testimonials">Stories</a>
            <a href="#events">Events</a>
            <a href="#giving">Give</a>
            <button class="login-btn" onclick="openLogin()">Sign In</button>
        </div>

        <button class="menu-btn" onclick="toggleMenu()">☰</button>

    </div>

</nav>


<!-- =========================
     HERO
========================== -->

<section class="hero" id="home">

    <div class="floating circle1"></div>
    <div class="floating circle2"></div>
    <div class="floating circle3"></div>

    <div class="hero-content">

        <div class="eyebrow">
            ✨ Everyone is welcome here
        </div>

        <h1>
            Come as you are.<br>
            <span>Leave transformed.</span>
        </h1>

        <p>
            A loving community discovering faith, finding purpose,
            and experiencing the grace of God together.
        </p>

        <div class="hero-buttons">

            <a href="#join" class="btn btn-primary">
                🙏 Join Our Family
            </a>

            <a href="#about" class="btn btn-outline">
                Discover Our Church
            </a>

        </div>

    </div>

</section>


<!-- =========================
     WELCOME / ABOUT
========================== -->

<section class="welcome" id="about">

    <div class="section-container">

        <div class="welcome-grid">

            <div class="image-stack reveal">

                <img
                    class="image-main"
                    src="https://images.unsplash.com/photo-1490730141103-6cac27aaab94?auto=format&fit=crop&w=1000&q=85"
                    alt="Church community"
                >

                <img
                    class="image-small"
                    src="https://images.unsplash.com/photo-1519491050282-cf00c82424b4?auto=format&fit=crop&w=700&q=85"
                    alt="People worshiping"
                >

                <div class="verse-card">
                    <strong>Today's Promise</strong>
                    <span>
                        "The Lord is my shepherd; I shall not want."
                    </span>
                </div>

            </div>

            <div class="welcome-copy reveal">

                <div class="section-heading" style="text-align:left;margin:0 0 25px;">
                    <div class="label">Who we are</div>
                    <h2>A church where <span>faith feels like family.</span></h2>
                </div>

                <p>
                    Grace & Glory Church is a vibrant community of people
                    from every walk of life. We believe church should be
                    a place where you can belong, grow, serve and discover
                    God's purpose for your life.
                </p>

                <p>
                    Our mission is simple: love God, love people and make
                    a difference in our community and around the world.
                </p>

                <ul class="check-list">
                    <li>
                        <span class="check">✓</span>
                        Christ-centered worship
                    </li>

                    <li>
                        <span class="check">✓</span>
                        Biblical teaching
                    </li>

                    <li>
                        <span class="check">✓</span>
                        Authentic community
                    </li>

                    <li>
                        <span class="check">✓</span>
                        Serving our city
                    </li>
                </ul>

                <a href="#join" class="btn btn-primary">
                    Learn More About Us
                </a>

            </div>

        </div>

    </div>

</section>


<!-- =========================
     STATS
========================== -->

<section class="stats">

    <div class="stats-grid">

        <div class="stat reveal">
            <h3 data-target="1200">0</h3>
            <p>Church Family Members</p>
        </div>

        <div class="stat reveal">
            <h3 data-target="38">0</h3>
            <p>Years of Ministry</p>
        </div>

        <div class="stat reveal">
            <h3 data-target="24">0</h3>
            <p>Community Programs</p>
        </div>

        <div class="stat reveal">
            <h3 data-target="15">0</h3>
            <p>Mission Partners</p>
        </div>

    </div>

</section>


<!-- =========================
     WAYS TO JOIN
========================== -->

<section class="join" id="join">

    <div class="section-heading reveal">

        <div class="label">Find your place</div>

        <h2>There is a place for you here.</h2>

        <p>
            Whether you are new to faith or have followed Jesus for years,
            there are many ways to connect and become part of our church family.
        </p>

    </div>

    <div class="section-container">

        <div class="join-grid">

            <article class="join-card reveal">

                <img
                    class="join-img"
                    src="https://images.unsplash.com/photo-1529390079861-591de354faf5?auto=format&fit=crop&w=900&q=80"
                    alt="Small group"
                >

                <div class="join-content">

                    <div class="icon">👥</div>

                    <h3>Join a Small Group</h3>

                    <p>
                        Build genuine friendships, study Scripture,
                        pray together and grow in faith.
                    </p>

                    <a href="#" class="text-link" onclick="joinAction('Small Group')">
                        Find a Group →
                    </a>

                </div>

            </article>


            <article class="join-card reveal">

                <img
                    class="join-img"
                    src="https://images.unsplash.com/photo-1531206715517-5c0ba140b2b8?auto=format&fit=crop&w=900&q=80"
                    alt="Church volunteers"
                >

                <div class="join-content">

                    <div class="icon">❤️</div>

                    <h3>Serve With Us</h3>

                    <p>
                        Use your gifts and talents to serve people
                        inside and outside our church.
                    </p>

                    <a href="#" class="text-link" onclick="joinAction('Serving Team')">
                        Start Serving →
                    </a>

                </div>

            </article>


            <article class="join-card reveal">

                <img
                    class="join-img"
                    src="https://images.unsplash.com/photo-1542810634-71277d95dcbb?auto=format&fit=crop&w=900&q=80"
                    alt="Youth ministry"
                >

                <div class="join-content">

                    <div class="icon">🌟</div>

                    <h3>Kids & Youth</h3>

                    <p>
                        Help the next generation discover faith,
                        friendship and God's purpose.
                    </p>

                    <a href="#" class="text-link" onclick="joinAction('Kids & Youth')">
                        Get Involved →
                    </a>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =========================
     TESTIMONIALS
========================== -->

<section class="testimonials" id="testimonials">

    <div class="section-heading reveal">

        <div class="label">Real stories</div>

        <h2>Lives are being changed.</h2>

        <p>
            Hear from some of the people who call Grace & Glory home.
        </p>

    </div>

    <div class="section-container">

        <div class="testimonial-grid">

            <article class="testimonial reveal">

                <div class="stars">★★★★★</div>

                <p>
                    "I walked through the doors not knowing what to expect.
                    I found people who genuinely cared about me and helped
                    me rediscover hope."
                </p>

                <div class="person">

                    <img
                        class="avatar"
                        src="https://i.pravatar.cc/100?img=47"
                        alt="Sarah"
                    >

                    <div>
                        <strong>Sarah M.</strong>
                        <span>Church Family</span>
                    </div>

                </div>

            </article>


            <article class="testimonial reveal">

                <div class="stars">★★★★★</div>

                <p>
                    "The small group changed everything for me. I finally
                    found a community where I could ask questions,
                    be myself and grow."
                </p>

                <div class="person">

                    <img
                        class="avatar"
                        src="https://i.pravatar.cc/100?img=12"
                        alt="James"
                    >

                    <div>
                        <strong>James R.</strong>
                        <span>Small Group Member</span>
                    </div>

                </div>

            </article>


            <article class="testimonial reveal">

                <div class="stars">★★★★★</div>

                <p>
                    "Serving in the community has given my family a new
                    sense of purpose. We aren't just attending church —
                    we're making a difference."
                </p>

                <div class="person">

                    <img
                        class="avatar"
                        src="https://i.pravatar.cc/100?img=32"
                        alt="Michelle"
                    >

                    <div>
                        <strong>Michelle T.</strong>
                        <span>Volunteer</span>
                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- =========================
     EVENTS
========================== -->

<section class="events" id="events">

    <div class="section-heading reveal">

        <div class="label">What's happening</div>

        <h2>Come grow with us.</h2>

        <p>
            There is always something happening at Grace & Glory.
        </p>

    </div>

    <div class="section-container">

        <div class="event-grid">

            <article class="event reveal">

                <div class="event-date">
                    <div>
                        <strong>12</strong><br>
                        OCT
                    </div>
                </div>

                <h3>Sunday Worship</h3>

                <p>
                    Join us for worship, prayer and an encouraging message.
                    9:00 AM & 11:00 AM.
                </p>

            </article>


            <article class="event reveal">

                <div class="event-date">
                    <div>
                        <strong>18</strong><br>
                        OCT
                    </div>
                </div>

                <h3>Community Dinner</h3>

                <p>
                    Bring your family and friends for a night of food,
                    fellowship and fun.
                </p>

            </article>


            <article class="event reveal">

                <div class="event-date">
                    <div>
                        <strong>25</strong><br>
                        OCT
                    </div>
                </div>

                <h3>Prayer Night</h3>

                <p>
                    An evening dedicated to worship, prayer and seeking
                    God's presence together.
                </p>

            </article>

        </div>

    </div>

</section>


<!-- =========================
     GIVING
========================== -->

<section class="giving" id="giving">

    <div class="giving-grid">

        <div class="giving-copy reveal">

            <div class="eyebrow">
                ❤️ Generosity changes lives
            </div>

            <h2>Give with purpose.</h2>

            <p>
                Your generosity helps us share the love of Christ,
                care for families, support missions and serve our community.
            </p>

            <div class="giving-options">

                <div class="give-option">
                    <div class="give-option-icon">⛪</div>
                    <div>
                        <h3>Church Ministry</h3>
                        <p>Support local church ministries.</p>
                    </div>
                </div>

                <div class="give-option">
                    <div class="give-option-icon">🌎</div>
                    <div>
                        <h3>Missions</h3>
                        <p>Help take hope around the world.</p>
                    </div>
                </div>

                <div class="give-option">
                    <div class="give-option-icon">🤝</div>
                    <div>
                        <h3>Community Care</h3>
                        <p>Support families in need.</p>
                    </div>
                </div>

            </div>

        </div>


        <div class="give-box reveal">

            <h3>Make a Gift</h3>

            <p>
                Choose an amount or enter your own.
            </p>

            <div class="amounts">

                <button class="amount" onclick="selectAmount(25,this)">
                    $25
                </button>

                <button class="amount" onclick="selectAmount(50,this)">
                    $50
                </button>

                <button class="amount" onclick="selectAmount(100,this)">
                    $100
                </button>

                <button class="amount" onclick="selectAmount(250,this)">
                    $250
                </button>

                <button class="amount" onclick="selectAmount(500,this)">
                    $500
                </button>

                <button class="amount" onclick="selectAmount(1000,this)">
                    $1,000
                </button>

            </div>

            <input
                class="form-input"
                id="giftAmount"
                type="number"
                placeholder="Other amount ($)"
            >

            <select class="form-input">
                <option>General Giving</option>
                <option>Church Ministry</option>
                <option>Missions</option>
                <option>Community Care</option>
                <option>Youth Ministry</option>
            </select>

            <button
                class="btn btn-primary"
                style="width:100%;"
                onclick="giveNow()"
            >
                Give Securely ❤️
            </button>

            <small style="display:block;margin-top:15px;color:#888;text-align:center;">
                Demo giving form — connect your payment provider before accepting real donations.
            </small>

        </div>

    </div>

</section>


<!-- =========================
     BIBLE VERSE
========================== -->

<section class="bible">

    <div class="bible-box reveal">

        <div class="cross">✝</div>

        <h2>A Word for Today</h2>

        <p>
            "For I know the plans I have for you," declares the Lord,
            "plans to prosper you and not to harm you, plans to give you
            hope and a future."
        </p>

        <div class="reference">
            Jeremiah 29:11
        </div>

    </div>

</section>


<!-- =========================
     FOOTER
========================== -->

<footer>

    <div class="footer-grid">

        <div>

            <div class="logo" style="color:white;margin-bottom:18px;">
                <span class="cross-logo">✝</span>
                Grace & Glory
            </div>

            <p>
                A community of faith, hope and love.
                Everyone has a place at the table.
            </p>

            <div class="socials">

                <a href="#" class="social">f</a>
                <a href="#" class="social">𝕏</a>
                <a href="#" class="social">◎</a>
                <a href="#" class="social">▶</a>

            </div>

        </div>

        <div>

            <h3>Church</h3>

            <a href="#about">About Us</a>
            <a href="#join">Join Us</a>
            <a href="#events">Events</a>
            <a href="#testimonials">Stories</a>

        </div>

        <div>

            <h3>Connect</h3>

            <a href="#">Prayer Request</a>
            <a href="#">Contact Us</a>
            <a href="#">Small Groups</a>
            <a href="#">Volunteer</a>

        </div>

        <div>

            <h3>Visit Us</h3>

            <p>
                123 Grace Avenue<br>
                Hope City, USA
            </p>

            <p style="margin-top:10px;">
                Sundays<br>
                9:00 AM & 11:00 AM
            </p>

        </div>

    </div>

    <div class="copyright">
        © 2026 Grace & Glory Church. All Rights Reserved.
    </div>

</footer>


<!-- =========================
     LOGIN MODAL
========================== -->

<div class="modal" id="loginModal">

    <div class="modal-box">

        <button class="close-modal" onclick="closeLogin()">
            ✕
        </button>

        <div style="font-size:2.4rem;margin-bottom:10px;">
            🙏
        </div>

        <h2>Welcome Back</h2>

        <p>
            Sign in to your Grace & Glory account.
        </p>

        <input
            class="form-input"
            id="loginEmail"
            type="email"
            placeholder="Email address"
        >

        <input
            class="form-input"
            id="loginPassword"
            type="password"
            placeholder="Password"
        >

        <button
            class="btn btn-primary"
            style="width:100%;"
            onclick="loginUser()"
        >
            Sign In
        </button>

        <p style="text-align:center;margin-top:20px;font-size:.85rem;">
            New here?
            <a href="#join" style="color:var(--purple);font-weight:700;" onclick="closeLogin()">
                Join our family
            </a>
        </p>

    </div>

</div>


<!-- =========================
     TOAST
========================== -->

<div class="toast" id="toast"></div>


<script>

    /* =========================
       NAVIGATION
    ========================== */

    const navbar = document.getElementById("navbar");

    window.addEventListener("scroll", () => {

        if (window.scrollY > 50) {
            navbar.classList.add("scrolled");
        } else {
            navbar.classList.remove("scrolled");
        }

    });


    function toggleMenu() {
        document.getElementById("navLinks").classList.toggle("active");
    }


    /* =========================
       LOGIN
    ========================== */

    function openLogin() {
        document.getElementById("loginModal").classList.add("show");
    }

    function closeLogin() {
        document.getElementById("loginModal").classList.remove("show");
    }

    window.addEventListener("click", function(event) {

        const modal = document.getElementById("loginModal");

        if (event.target === modal) {
            closeLogin();
        }

    });


    function loginUser() {

        const email = document.getElementById("loginEmail").value;
        const password = document.getElementById("loginPassword").value;

        if (!email || !password) {
            showToast("Please enter your email and password.");
            return;
        }

        closeLogin();

        showToast("Welcome back! 🙏 Demo login successful.");

    }


    /* =========================
       TOAST
    ========================== */

    function showToast(message) {

        const toast = document.getElementById("toast");

        toast.textContent = message;
        toast.classList.add("show");

        setTimeout(() => {
            toast.classList.remove("show");
        }, 3500);

    }


    /* =========================
       JOIN ACTION
    ========================== */

    function joinAction(team) {

        event.preventDefault();

        showToast(
            "Thank you! We'll help you connect with our " + team + ". ❤️"
        );

    }


    /* =========================
       GIVING
    ========================== */

    function selectAmount(amount, element) {

        document
            .querySelectorAll(".amount")
            .forEach(button => button.classList.remove("active"));

        element.classList.add("active");

        document.getElementById("giftAmount").value = amount;

    }


    function giveNow() {

        const amount = document.getElementById("giftAmount").value;

        if (!amount || Number(amount) <= 0) {

            showToast("Please enter a giving amount.");

            return;

        }

        showToast(
            "Thank you for your generous heart! ❤️ Your gift is ready to process."
        );

    }


    /* =========================
       SCROLL REVEAL
    ========================== */

    const revealElements =
        document.querySelectorAll(".reveal");

    const observer = new IntersectionObserver(

        entries => {

            entries.forEach(entry => {

                if (entry.isIntersecting) {

                    entry.target.classList.add("visible");

                }

            });

        },

        {
            threshold: .15
        }

    );

    revealElements.forEach(element => {
        observer.observe(element);
    });


    /* =========================
       COUNTERS
    ========================== */

    const counters =
        document.querySelectorAll("[data-target]");

    const counterObserver = new IntersectionObserver(

        entries => {

            entries.forEach(entry => {

                if (!entry.isIntersecting) return;

                const counter = entry.target;
                const target = Number(counter.dataset.target);

                let current = 0;

                const increment = Math.max(
                    1,
                    Math.ceil(target / 60)
                );

                const updateCounter = () => {

                    current += increment;

                    if (current >= target) {

                        counter.textContent =
                            target.toLocaleString() + "+";

                    } else {

                        counter.textContent =
                            current.toLocaleString();

                        requestAnimationFrame(updateCounter);

                    }

                };

                updateCounter();

                counterObserver.unobserve(counter);

            });

        },

        {
            threshold: .6
        }

    );

    counters.forEach(counter => {
        counterObserver.observe(counter);
    });


    /* =========================
       CLOSE MOBILE MENU
    ========================== */

    document.querySelectorAll(".nav-links a")
        .forEach(link => {

            link.addEventListener("click", () => {

                document
                    .getElementById("navLinks")
                    .classList.remove("active");

            });

        });

</script>

</body>
</html>