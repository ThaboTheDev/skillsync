import pyrebase
from validate import validate

firebaseConfig = {
    'apiKey': "AIzaSyDJN_OqNvbKpyP3yVy7vqCP3-mAfRwgTfs",
    'authDomain': "skillsync-77bc4.firebaseapp.com",
    "databaseURL": "https://your-project-id.firebaseio.com",
    'projectId': "skillsync-77bc4",
    'storageBucket': "skillsync-77bc4.firebasestorage.app",
    'messagingSenderId': "292086085865",
    'appId': "1:292086085865:web:1b8e1073064dad47ce9878",
    'measurementId': "G-P23WVPELEN"
}

firebase = pyrebase.initialize_app(firebaseConfig)
auth = firebase.auth()

def signup() :
    print(' ')
    print('Welcome you can signup.')
    email, password = validate()
            
    try :
        auth.create_user_with_email_and_password(email, password)
        print('Signup complete!')
        login()
        
    except:
        print('Email already exists!')
        signup()
        
def login():
    print(' ')
    print('Welcome you can login.')
    while True:
        email = input('Enter email: ')
        password = input('Enter password: ')
        
        try :
            auth.sign_in_with_email_and_password(email, password)
            print('login complete!')
            break
            
        except:
            print('Email or Password invalid')
        continue
    
def main():    
    while True:
        ans = input('Are you a new user (y/n): ').strip().lower()
        
        if ans not in ['y', 'n']:
            continue
        break
    
    if ans == 'y':
        login()
        
    elif ans == 'n':
        signup()
        
main()