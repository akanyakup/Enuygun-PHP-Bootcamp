# Enuygun-PHP-Bootcamp

### !!!Önemli: Uygulamayı çalıştırmadan önce Public klasörünün altına aşağıdaki Google Drive linkindeki uploads.zip içerisindeki Uploads klasörünü eklemeniz gerekmektedir. 

https://drive.google.com/file/d/1InCFPgPNsk-l7NnvYXZZMwBXbe7H0cfS/view?usp=sharing

(İçinde resimler olduğu ve boyutunun büyük olduğu için buraya ekleyemedim.)

### Uygulamada kullanılan teknolojiler:
#### -Symfony 5.4
#### -EasyAdmin
#### -Bootstrap

eticaret.sql'i veritabanınıza import edin.
-.env'den ortamınızı ayarlayın:
 ```bash
    DATABASE_URL="mysql://user_name:password@127.0.0.1:3306/database_name?serverVersion=mariadb-10.5.6"
    APP_ENV=dev
 ```

-Eğer sertifika hatası alırsanız php.ini dosyasını açın ve ctrl+f kullanarak [curl] başlığı altındaki ;curl.cainfo= 'u şu hale getirin;
```bash
;curl.cainfo ="D:\wamp64\bin\php\php(sizin php versiyonunuz)\extras\ssl\cacert.pem"
```

-(Ben WampServer kullandım, siz xampp kullanıyorsanız kendinize göre ayarlayın)

