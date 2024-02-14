<script setup>
import { reactive } from 'vue';
import { data } from '../data.js';

const themeInfo = reactive({
    theme: 'Rose-Pine',
    isDark: true,
});

const setClass = () => {
    data.currentTheme = themeInfo.isDark
        ? themeInfo.theme
        : `${themeInfo.theme}-Light`;
};

// const changeTheme = () => {
//     themeInfo.theme = themeInfo.theme === 'Rose-Pine' ? 'Gruvbox' : 'Rose-Pine';
//     setClass();
// };

const changeMode = () => {
    themeInfo.isDark = !themeInfo.isDark;
    setClass();
};
</script>

<template>
    <div class="theme-setter-window">
        <i
            @click="changeMode"
            :class="themeInfo.isDark ? '' : 'lit'"
            class="fa-solid fa-lightbulb"
        ></i>
        <!-- <span @click="changeTheme" class="theme-button">{{
            themeInfo.theme
        }}</span> -->
    </div>
</template>

<style scoped>
.theme-setter-window {
    position: absolute;
    top: 0.25rem;
    left: 0.25rem;
    padding: 0.5rem;
    border-radius: 0.5rem;
    background: var(--background);
}

.fa-lightbulb {
    font-size: 2rem;
    color: var(--foregroundAlt);
}

.lit {
    color: var(--orange);
}
</style>
