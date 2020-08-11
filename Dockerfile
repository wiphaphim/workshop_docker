FROM python:3.6-alpine 
#! images file 

ADD . /app       
#! copy file ไว้ที่ dir ที่เราสร้างไว้ เข้าไปอยู่ในโฟลเดอร์ app.py
WORKDIR /app     
#! cd เข้า app

RUN pip install --upgrade pip           
RUN pip install -r requirements.txt     
#! install lib ตามไฟล์ requirements.txt

EXPOSE 5000     
#! exposs มาที่ port 5000
CMD ["python","app.py"] //! ใส่เป็นลิสหรือดิก
