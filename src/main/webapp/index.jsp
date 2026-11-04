<!-- <html>
<body>
<h2>Hello World!</h2>
</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Personal Portfolio</title>
    <style>
        /* Base Reset & Variables */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            scroll-behavior: smooth;
        }

        :root {
            --bg-color: #f8f9fa;
            --text-color: #212529;
            --primary-color: #4f46e5;
            --secondary-color: #64748b;
            --card-bg: #ffffff;
            --border-color: #e2e8f0;
        }

        body {
            background-color: var(--bg-color);
            color: var(--text-color);
            line-height: 1.6;
        }

        /* Navigation */
        header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(5px);
            border-bottom: 1px solid var(--border-color);
            z-index: 1000;
        }

        .nav-container {
            max-width: 1100px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 2rem;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary-color);
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 2rem;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--secondary-color);
            font-weight: 500;
            transition: color 0.3s;
        }

        .nav-links a:hover {
            color: var(--primary-color);
        }

        /* Sections Layout */
        section {
            padding: 6rem 2rem 4rem 2rem;
            max-width: 1100px;
            margin: 0 auto;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .section-title {
            font-size: 2rem;
            margin-bottom: 2rem;
            position: relative;
            padding-bottom: 0.5rem;
        }

        .section-title::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 50px;
            height: 4px;
            background-color: var(--primary-color);
            border-radius: 2px;
        }

        /* Hero Section */
        #home {
            text-align: center;
            align-items: center;
            justify-content: center;
        }

        .hero-title {
            font-size: 3.5rem;
            margin-bottom: 1rem;
        }

        .hero-title span {
            color: var(--primary-color);
        }

        .hero-subtitle {
            font-size: 1.5rem;
            color: var(--secondary-color);
            margin-bottom: 2rem;
        }

        .btn {
            display: inline-block;
            background-color: var(--primary-color);
            color: white;
            padding: 0.75rem 2rem;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 600;
            transition: transform 0.3s, background-color 0.3s;
        }

        .btn:hover {
            background-color: #4338ca;
            transform: translateY(-2px);
        }

        /* About Section */
        .about-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 3rem;
            align-items: center;
        }

        .skills-container {
            margin-top: 1.5rem;
        }

        .skill-bar {
            margin-bottom: 1rem;
        }

        .skill-info {
            display: flex;
            justify-content: space-between;
            margin-bottom: 0.25rem;
            font-weight: 500;
        }

        .progress-line {
            height: 8px;
            width: 100%;
            background-color: var(--border-color);
            border-radius: 10px;
            position: relative;
        }

        .progress-line span {
            height: 100%;
            background-color: var(--primary-color);
            position: absolute;
            left: 0;
            top: 0;
            border-radius: 10px;
        }

        /* Projects Section */
        .project-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
        }

        .project-card {
            background-color: var(--card-bg);
            border: 1px solid var(--border-color);
            border-radius: 8px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .project-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0,0,0,0.05);
        }

        .project-img {
            height: 200px;
            background-color: var(--border-color);
            display: flex;
            align-items: center;
            justify-content: center;
            color: var(--secondary-color);
        }

        .project-info {
            padding: 1.5rem;
        }

        .project-info h3 {
            margin-bottom: 0.5rem;
        }

        .project-info p {
            color: var(--secondary-color);
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }

        .project-link {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 600;
            font-size: 0.9rem;
        }

        /* Contact Section */
        .contact-container {
            max-width: 600px;
            margin: 0 auto;
            width: 100%;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid var(--border-color);
            border-radius: 5px;
            outline: none;
            font-size: 1rem;
        }

        .form-group input:focus, .form-group textarea:focus {
            border-color: var(--primary-color);
        }

        footer {
            text-align: center;
            padding: 2rem;
            border-top: 1px solid var(--border-color);
            color: var(--secondary-color);
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .about-content {
                grid-template-columns: 1fr;
            }
            .hero-title {
                font-size: 2.5rem;
            }
            .nav-links {
                gap: 1rem;
            }
        }
    </style>
</head>
<body>

    <!-- Header Navigation -->
    <header>
        <nav class="nav-container">
            <a href="#home" class="logo">Portfolio.</a>
            <ul class="nav-links">
                <li><a href="#home">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#projects">Projects</a></li>
                <li><a href="#contact">Contact</a></li>
            </ul>
        </nav>
    </header>

    <!-- Home/Hero Section -->
    <section id="home">
        <h1 class="hero-title">Hi, I'm <span>John Doe</span></h1>
        <p class="hero-subtitle">Frontend Developer & UI/UX Designer</p>
        <a href="#projects" class="btn">View My Work</a>
    </section>

    <!-- About Section -->
    <section id="about">
        <h2 class="section-title">About Me</h2>
        <div class="about-content">
            <div>
                <p>I am a passionate developer with experience building clean, responsive, and user-friendly websites. I enjoy turning complex problems into simple, beautiful interface designs.</p>
                <br>
                <p>When I'm not coding, you can find me exploring new technologies, writing design concepts, or working on open-source projects.</p>
            </div>
            <p>If you see this line in Github, that means your latest changes are getting pushed to your cloud repo :o</p>
            <p>If you see this line in Github, that means your latest changes are getting pushed to your cloud repo :o</p>
            <p>If you see this line in Github, that means your latest changes are getting pushed to your cloud repo :o</p>
            <p>If you see this line in Github, that means your latest changes are getting pushed to your cloud repo :o</p>
            <div class="skills-container">
                <div class="skill-bar">
                    <div class="skill-info">
                        <span>HTML / CSS</span>
                        <span>90%</span>
                    </div>
                    <div class="progress-line"><span style="width: 90%;"></span></div>
                </div>
                <div class="skill-bar">
                    <div class="skill-info">
                        <span>JavaScript</span>
                        <span>80%</span>
                    </div>
                    <div class="progress-line"><span style="width: 80%;"></span></div>
                </div>
                <div class="skill-bar">
                    <div class="skill-info">
                        <span>UI Design</span>
                        <span>75%</span>
                    </div>
                    <div class="progress-line"><span style="width: 75%;"></span></div>
                </div>
            </div>
        </div>
    </section>

    <!-- Projects Section -->
    <section id="projects">
        <h2 class="section-title">My Projects</h2>
        <div class="project-grid">
            <!-- Project 1 -->
            <div class="project-card">
                <div class="project-img">[ Project Image Placeholder ]</div>
                <div class="project-info">
                    <h3>E-Commerce Platform</h3>
                    <p>A fully functional online shopping application featuring filtering systems and responsive layout structures.</p>
                    <a href="#" class="project-link">View Details &rarr;</a>
                </div>
            </div>
