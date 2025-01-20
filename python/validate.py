def validate():
    
    while True:
        email = input('Enter email: ').strip()
        
        if '@' in list(email):
            break
        print('Email must have an "@" in it!')
        continue
    
    check = False
        
    while True: 
        password = input('Enter password: ').strip()
        
        if len(password) < 8 :
            print('Password must be 8 characters!')
            continue
        
        temp = list(password)
        
        for i in ['!', '@', '#', '$', '%', '*', '/', '_']:
            for k in temp:
                if i == k:
                    check = True
                
        if check == False:
            print("password must have one of these characters ['!', '@', '#', '$', '%', '*', '/',]")
            continue
        break
    
    return email, password