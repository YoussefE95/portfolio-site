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
    i {
        font-size: 2rem;
        padding: .75rem;
        color: var(--foreground);
        background: transparent;
    }

    i.lit {
        color: var(--orange);
        background: transparent;
    }
</style>
