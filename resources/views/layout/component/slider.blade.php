<div class="section">

    <div class="sign">
        <span class="fast-flicker">PO</span>LY<span class="flicker">G</span>ON
    </div>

    <div class="video-container">
        <div class="color-overlay"></div>
        <video autoplay loop muted>
            <source src="{{ asset('video/watch.mov') }}" type="video/mp4">
        </video>
    </div>
</div>
<style>
    .section {
        position: relative;
        display: flex;
        justify-content: center;
        overflow: hidden;
        align-items: center;
        width: 100vw;
        height: 50vh
    }

    .section h1 {
        font-size: 3rem;
        font-family: "Cookie";
        z-index: 1;
        opacity: 0.7;
        color: white
    }

    video {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
    }


    .sign {
        position: absolute;
        display: flex;
        justify-content: center;
        align-items: center;
        width: 50%;
        height: 50%;
        z-index: 1;
        transform: translate(-50%, -50%);
        letter-spacing: 2;
        left: 50%;
        top: 50%;
        font-family: "Clip";
        text-transform: uppercase;
        font-size: 6em;
        color: #ffe6ff;
        text-shadow: 0 0 0.6rem #ffe6ff, 0 0 1.5rem #ff65bd,
        -0.2rem 0.1rem 1rem #ff65bd, 0.2rem 0.1rem 1rem #ff65bd,
        0 -0.5rem 2rem #ff2483, 0 0.5rem 3rem #ff2483;
        animation: shine 2s forwards, flicker 3s infinite;
    }

    @keyframes blink {
        0%,
        22%,
        36%,
        75% {
            color: #ffe6ff;
            text-shadow: 0 0 0.6rem #ffe6ff, 0 0 1.5rem #ff65bd,
            -0.2rem 0.1rem 1rem #ff65bd, 0.2rem 0.1rem 1rem #ff65bd,
            0 -0.5rem 2rem #ff2483, 0 0.5rem 3rem #ff2483;
        }
        28%,
        33% {
            color: #ff65bd;
            text-shadow: none;
        }
        82%,
        97% {
            color: #ff2483;
            text-shadow: none;
        }
    }

    .flicker {
        animation: shine 2s forwards, blink 3s 2s infinite;
    }

    .fast-flicker {
        animation: shine 2s forwards, blink 10s 1s infinite;
    }

    @keyframes shine {
        0% {
            color: #6b1839;
            text-shadow: none;
        }
        100% {
            color: #ffe6ff;
            text-shadow: 0 0 0.6rem #ffe6ff, 0 0 1.5rem #ff65bd,
            -0.2rem 0.1rem 1rem #ff65bd, 0.2rem 0.1rem 1rem #ff65bd,
            0 -0.5rem 2rem #ff2483, 0 0.5rem 3rem #ff2483;
        }
    }

    @keyframes flicker {
        from {
            opacity: 1;
        }

        4% {
            opacity: 0.9;
        }

        6% {
            opacity: 0.85;
        }

        8% {
            opacity: 0.95;
        }

        10% {
            opacity: 0.9;
        }

        11% {
            opacity: 0.922;
        }

        12% {
            opacity: 0.9;
        }

        14% {
            opacity: 0.95;
        }

        16% {
            opacity: 0.98;
        }

        17% {
            opacity: 0.9;
        }

        19% {
            opacity: 0.93;
        }

        20% {
            opacity: 0.99;
        }

        24% {
            opacity: 1;
        }

        26% {
            opacity: 0.94;
        }

        28% {
            opacity: 0.98;
        }

        37% {
            opacity: 0.93;
        }

        38% {
            opacity: 0.5;
        }

        39% {
            opacity: 0.96;
        }

        42% {
            opacity: 1;
        }

        44% {
            opacity: 0.97;
        }

        46% {
            opacity: 0.94;
        }

        56% {
            opacity: 0.9;
        }

        58% {
            opacity: 0.9;
        }

        60% {
            opacity: 0.99;
        }

        68% {
            opacity: 1;
        }

        70% {
            opacity: 0.9;
        }

        72% {
            opacity: 0.95;
        }

        93% {
            opacity: 0.93;
        }

        95% {
            opacity: 0.95;
        }

        97% {
            opacity: 0.93;
        }

        to {
            opacity: 1;
        }
    }

</style>
