FROM haroldli/alist-tvbox:latest

# ضبط بيئة العمل للـ AList
ENV PORT=5244

# إضافة فحص الاستجابة (Healthcheck) لضمان مرور فحص SnapDeploy بنجاح
HEALTHCHECK --interval=10s --timeout=5s --retries=3 \
  CMD wget --spider -q http://localhost:5244/ || exit 1

EXPOSE 5244
