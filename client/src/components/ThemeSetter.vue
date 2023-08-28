<script setup>
    import { isLit } from './store.js';
</script>

<template>
    <div class='theme-setter'>
        <i class='fa-solid fa-lightbulb' :class='{ lit: isLit }'
            @click='() => isLit = !isLit'>
        </i>
    </div>
</template>

<style scoped>
    .theme-setter {
        position: relative;
        z-index: 7;
    }

    i {
        position: fixed;
        font-size: 2.5rem;
        padding: .75rem;
        right: 0;
        color: var(--foreground);
        background: transparent;
    }

    i.lit {
        color: var(--orange);
        background: transparent;
    }
</style>
