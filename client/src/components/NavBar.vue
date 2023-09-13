<script setup>
import ThemeSetter from './ThemeSetter.vue'
import { ref } from 'vue'
let active = ref(false)
</script>

<template>
    <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
            <a
                role="button"
                class="navbar-burger"
                :class="active ? 'is-active' : ''"
                @click="active = !active"
                data-target="nav"
                aria-label="menu"
                aria-expanded="false"
            >
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
                <span aria-hidden="true"></span>
            </a>
        </div>

        <div id="nav" class="navbar-menu" :class="active ? 'is-active' : ''">
            <div class="navbar-start">
                <router-link to="/" class="navbar-item">
                    Home
                </router-link>
                <router-link to="/lotr" class="navbar-item">
                    LOTR
                </router-link>
                <div class="navbar-item has-dropdown is-hoverable">
                    <router-link to="/moon-trek" class="navbar-item">
                        Moon Trek
                    </router-link>
                    <div class="navbar-dropdown">
                        <router-link to="/moon-trek/upload" class="navbar-item">
                            Upload
                        </router-link>
                        <router-link to="/moon-trek/registration" class="navbar-item">
                            Registration
                        </router-link>
                        <router-link to="/moon-trek/model" class="navbar-item">
                            Model
                        </router-link>
                    </div>
                </div>
            </div>
        </div>

        <div class="navbar-end">
            <div class="navbar-item">
                <div class="buttons">
                    <ThemeSetter />
                </div>
            </div>
        </div>
    </nav>
</template>

<style scoped>
nav, .navbar-item {
    background: var(--background);
}

.navbar-dropdown {
    background: var(--backgroundAlt);
}

.navbar-item {
    color: var(--foreground);
}

.navbar-item:hover {
    background: var(--backgroundAlt);
    color: var(--magenta);
}
</style>
