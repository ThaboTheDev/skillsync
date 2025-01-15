import pyrebase

firebaseConfig = {
    'apiKey': "AIzaSyDJN_OqNvbKpyP3yVy7vqCP3-mAfRwgTfs",
    'authDomain': "skillsync-77bc4.firebaseapp.com",
    'projectId': "skillsync-77bc4",
    'storageBucket': "skillsync-77bc4.firebasestorage.app",
    'messagingSenderId': "292086085865",
    'appId': "1:292086085865:web:1b8e1073064dad47ce9878",
    'measurementId': "G-P23WVPELEN"
}

firebase = pyrebase.initialize_app(firebaseConfig)
auth = firebase.auth()

def signup() :
    email = input()
    password = input()