<template>
    <div class="text-center hero">
        <p class="name">Youssef Elzein</p>
        <p class="title">Software Engineer</p>
    </div>
</template>

<style scoped>
.name,
.title {
    font-size: 1.75rem;
    font-weight: bold;
    color: var(--heroText);
}

.name {
    font-family: 'Delicious Handrawn', cursive;
    font-size: 4rem;
    transform: rotate(-4deg);
}

.hero {
    background: linear-gradient(
        -45deg,
        var(--purple),
        var(--blue)
    );
    background-size: 200% 200%;
    animation: gradient 15s ease infinite;
    padding: 6rem 0rem;
}

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}
</style>
