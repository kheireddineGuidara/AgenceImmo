import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    plugins: [
        laravel({
            input: [
                'resources/css/app.css',
                'resources/css/bootstrap.min.css',
                'resources/css/tiny-slider.css',
                'resources/css/style.css',
                'resources/js/app.js',
                'resources/js/bootstrap.bundle.min.js',
                'resources/js/tiny-slider.js',
                'resources/js/custom.js',
                'resources/images/**',
            ],
            refresh: true,
        }),
    ],
});
