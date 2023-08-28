<template>
    <div class='return-home'>
        <router-link to='/'>
            <i class='fa-solid fa-house-chimney' />
        </router-link>
    </div>
</template>

<style scoped>
    .return-home {
        position: relative;
        z-index: 7;
    }

    i {
        position: fixed;
        font-size: 2.25rem;
        padding: .75rem;
        left: 0;
        color: var(--blue);
        background: transparent;
    }

    i:hover {
        color: var(--magenta);
    }
</style>
