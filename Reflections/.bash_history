mkdir models
cd models
touch User.js
refresh
mkdir routes
cd routes
touch auth.js
refresh
mkdir views
cd views
mkdir layouts
cd layouts
touch main.ejs
cd ..
mkdir auth
cd auth
touch register.ejs
touch login.ejs
cd ..
touch profile.ejs
refresh
cd styles
cd public
ls
mkdir css
cd css
touch style.css
refres
refresh
npm install dotenv
mkdir config
cd config
touch passport.js
refresh
npm install mongodb
cd views
mkdir layouts
ls
mv main.ejs layouts
refresh
cd views
ls
ls /*
ls
refresh
npm install connect-flash
npm install jsonwebtoken
npm install cookie-parser
npm install cookie-parser
node seedAdmin.js
curl -X POST http://localhost:3000/auth/login -H "Content-Type: application/json" -d '{"email": "admin@example.com", "password": "adminpassword"}'
db.users.deleteOne({ email: "admin@example.com" });
node seedAdmin.js
node promoteToAdmin.js
ls
node promoToAdmin.js
node promoToAdmin.js
npm install multer
refresh
npm install gridfs-stream
npm install mongoose-gridfs multer-gridfs-storage
npm install multerGridFs
npm install multer-gridfs-storage@latest
refresh
npm uninstall multer-gridfs-storage
npm install multer-gridfs-storage@5.0.2
npm uninstall multer-gridfs-storage mongodb
npm install multer-gridfs-storage@5.0.2 mongodb@3.6.3
npm list multer-gridfs-storage
refresh
refresh
npm list multer-gridfs-storage
npm install multer-gridfs-storage@5.0.2 mongodb@3.6.3
rm -rf node_modules package-lock.json
npm install
npm install
node seedAdmin.js
npm install method-override
node insertData.js
node insertData.js
node insertData.js
node insertData.js
node insertData.js
node insertData.js
refresh
curl -X DELETE http://localhost:3000/profile/photo/<photoId>
curl -X DELETE http://localhost:3000/profile/photo/675e18af2b3d1bac1194fb9c
node insertCategory.js
npm install cookie-parser
node migratePhotoCategories.js
node migratePhotoCategories.js
node migratePhotoCategories.js
node const mongoose = require('mongoose');
const User = require('./models/User');
const Photo = require('./models/Photo');
const Comment = require('./models/Comment');
// Load environment variables
require('dotenv').config();
const uri = `mongodb+srv://${process.env.USERNAME}:${process.env.PASSWORD}@${process.env.HOST}/${process.env.DATABASE}?retryWrites=true&w=majority`;
// Connect to MongoDB
async function connectDB() {
  try {
    await mongoose.connect(uri, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    console.log('Connected to MongoDB');
  } catch (err) {
    console.error('Database connection error:', err.message);
    process.exit(1);
  }
}
// Function to clean up orphaned photos and comments
async function cleanupOrphanedData() {
  try {
    // 1. Identify orphaned photos
    const orphanedPhotos = await Photo.find({ uploader: { $nin: await User.find().select('_id') } });
    console.log(`Found ${orphanedPhotos.length} orphaned photos.`);
    // Delete orphaned photos
    for (const photo of orphanedPhotos) {
      console.log(`Deleting photo with ID: ${photo._id}`);
      await photo.deleteOne();
    }
    // 2. Identify orphaned comments
    const orphanedComments = await Comment.find({ user: { $nin: await User.find().select('_id') } });
    console.log(`Found ${orphanedComments.length} orphaned comments.`);
    // Delete orphaned comments
    for (const comment of orphanedComments) {
      console.log(`Deleting comment with ID: ${comment._id}`);
      await comment.deleteOne();
    }
    console.log('Orphaned photos and comments have been cleaned up.');
  } catch (err) {
    console.error('Error cleaning up orphaned data:', err.message);
  }
}
// Run the cleanup
async function main() {
  await connectDB();
  await cleanupOrphanedData();
  mongoose.connection.close();
  console.log('Database connection closed.');
}
main();
node cleanupOrphanedData.js
npm install nodemailer
ls views
touch views/AboutUs.ejs
node server.js
