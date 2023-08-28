# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "@popperjs/core", to: "https://ga.jspm.io/npm:@popperjs/core@2.11.6/lib/index.js"
pin "jquery", to: "https://ga.jspm.io/npm:jquery@3.6.4/dist/jquery.js"
pin "rails-ujs", to: "https://ga.jspm.io/npm:rails-ujs@5.2.8-1/lib/assets/compiled/rails-ujs.js"
pin 'jquery-peity', to: "jquery.peity.min.js", preload: true
pin 'jquery-ui', to: "jquery-ui.min.js", preload: true
pin "metismenu", to: "https://ga.jspm.io/npm:metismenu@3.0.7/dist/metisMenu.min.js"
pin "moment", to: "https://ga.jspm.io/npm:moment@2.29.4/moment.js"
pin 'perfect-scrollbar', to: "perfect-scrollbar.min.js", preload: true
pin 'custom', to: "custom.js", preload: true
pin 'deznav-init', to: "deznav-init.js", preload: true
pin 'deznav-min', to: "deznav.min.js", preload: true
pin 'Chart-bundle', to: "Chart.bundle.min.js", preload: true
pin 'apexchart', to: "apexchart.js", preload: true
pin 'dashboard-1', to: "dashboard-1.js", preload: true
pin 'dropzone-min', to: "dropzone.min.js", preload: true

pin 'owl', to: "owl.carousel.js", preload: true
pin 'bootstrap-select', to: "bootstrap-select.min.js", preload: true
pin 'bootstrap-bundle-min', to: "bootstrap.bundle.min", preload: true
pin 'chosen-select', to: "chosen-select.js", preload: true
pin 'chosen-select-form', to: "chosen-select-form.js", preload: true

pin 'dataTables-init', to: "datatables.init.js", preload: true
pin 'dataTables-min', to: "jquery.dataTables.min.js", preload: true
pin 'dataTables-buttons', to: "dataTables.buttons.min.js", preload: true
pin 'dataTables-bootstrap4-min', to: "dataTables.bootstrap4.min.js", preload: true

pin 'datetimepicker', to: "bootstrap-datetimepicker.min.js", preload: true
pin 'fullcalendar-min', to: "fullcalendar.min.js", preload: true
pin 'fullcalendar-init', to: "fullcalendar-init.js", preload: true
pin 'highlight.pack.min', to: "highlight.pack.min.js", preload: true
