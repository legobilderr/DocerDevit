const htmlImport = require('gulp-html-import');

gulp.task('import', function () {
  gulp.src('../page-templates/index.html')
    .pipe(gulpImport('../page-templates/components/'))
    .pipe(gulp.dest('dist'));
})
