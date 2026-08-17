FROM haroldli/alist-tvbox:latest

ENV PORT=5244
EXPOSE 5244

# تعيين كلمة سر جديدة اسم المستخدم admin
RUN /alist/alist admin set admin12345

CMD ["/alist/alist", "server", "--no-prefix"]
