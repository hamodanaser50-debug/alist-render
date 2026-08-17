FROM haroldli/alist-tvbox:latest

# إجبار المنصة على استخدام البورت المباشر لـ AList وإلغاء توجيه Nginx الداخلي
ENV PORT=5244
EXPOSE 5244

# تشغيل alist بشكل مباشر عند بدء الحاوية
CMD ["/alist/alist", "server", "--no-prefix"]
