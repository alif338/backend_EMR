# E-Medical Record API Services
Medical Records is a

Medical Records adalah suatu basis pencatatan dan pengelolaan data historis pasien untuk pengambilan keputusan atas tindakan dan pengobatan bagi pasien. Basis pencatatan yang dimaksud dapat berupa fisik maupun elektronik, yang mana istilahnya saat ini disebut E-MR (Electronic Medical Records). Proyek E-MR API Services ini menyajikan sekumpulan Endpoint API yang memiliki fungsi-fungsi dasar pencatatan Rekam Medis dengan flow seperti pencatatan secara fisik.

Kelebihan yang ditawarkan pada pencatatan elektronik ini salah satunya adalah dapat mengurangi biaya Maintenance Rekam Medis serta database pasien serta lifetime data pencatatan yang lebih panjang dibandingkan pencatatan fisik.

# Cara Menggunakan
MVP dari project ini dapat dilakukan dirun dengan menggunakan rails console. Kemudian kita bisa menggunakan APInya dari console tersebut.

## Operator
Berikut ini adalah API yang akan digunakan oleh para operator pada rumah sakit atau puskesmas. API ini dapat digunakan untuk memperlihatkan data dan record. Dapat digunakan untuk mendaftarkan pasien-pasien baru juga.

### Register New Patient
API yang digunakan untuk mendaftar pasien baru. Data yang didaftarkan adalah name, age, gender, religion, education, job profession, allergical history, member type dan nomor medical record dari pasien tersebut.

### Show All Patient
API yang digunakan untuk menunjukkan para pasien dari rumah sakit atau puskesmas tersebut.

### Show All Nurses
API yang digunakan untuk menunjukkan para perawat dari rumah sakit atau puskesmas tersebut.

### Show Patient by id/Check In
API yang digunakan menunjukkan pasien berdasarkan check in atau id dari pasien tersebut.

### Get All Medical Records 
API yang digunakan operator untuk mengambil medical record dari rumah sakit atau puskesmas tersebut

## Nurse / Doctor Role
Berikut ini adalah API yang digunakan oleh para perawat dan dokter untuk mempermudah pencatatan pada rumah sakit atau puskesmas

### Create New Record
API yang digunakan untuk mencatat appointment baru yang berisi patient id, doctor id dan waktu appointment tersebut dibuat.

### Write Anemnesa
API yang digunakan untuk mencatat anemnesa dari pasien yang berisi record id, keluhan utama, riwayat penyakit pasien, riwayat penyakit saat ini dan riwayat penyakit dari keluarga.

### Write Physics Support Check
API yang digunakan untuk mencatat data fisik pasien beserta data mendukung lainnya yang dapat membantu perawat dan dokter menemukan solusi untuk pasien. Record id juga dicatat disini.

### Write Diagnostic
API yang digunakan untuk mencatat diagnosis utama, diagnosis complicate dan diagnosis comorbid dari pasien beserta dengan record id.

## Write Management Plan
API yang digunakan untuk mencatat solusi dokter dan perawat untuk membantu pasien. Rencana untuk 

Write Management Plan will record on doctor and nurses's action to help the patient. Plan of how to do the therapy, advanced plan and education that would be given to the patient in order to help the recovery process.

# Rails on Replit

This is a template to get you started with Rails on Replit. It's ready to go so you can just hit run and start coding!

This template was generated using `rails new` (after you install the `rails` gem from the packager sidebar) so you can always do that if you prefer to set it up from scratch. The only had two make config changes we had to make to run it on Replit:

- bind the app on `0.0.0.0` instead of `localhost` (see `.replit`)
- allow `*.repl.co` hosts (see `config/environments/development.rb`)
- allow the app to be iframed on `replit.com` (see `config/application.rb`)

## Running the app

Simple hit run! You can edit the run command from the `.replit` file.

## Running commands

Start every command with `bundle exec` so that it runs in the context of the installed gems environment. The console pane will give you output from the server but you can run arbitrary command from the shell without stopping the server.

## Database

SQLite would work in development but we don't recommend running it in production. Instead look into using the built-in [Replit database](http://docs.replit.com/misc/database). Otherwise you are welcome to connect databases from your favorite provider. 

## Help

If you need help you might be able to find an answer on our [docs](https://docs.replit.com) page. Feel free to report bugs and give us feedback [here](https://replit.com/support).