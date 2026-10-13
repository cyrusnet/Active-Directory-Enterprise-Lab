# Active-Directory-Enterprise-Lab
Enterprise Windows Server Active Directory implementation, DC Promotion, Replication &amp; FSMO Roles Migration using PowerShell
# 🏢 Enterprise Windows Server Active Directory & FSMO Roles Migration Lab

An enterprise-grade laboratory deployment demonstrating Microsoft Windows Server Active Directory Domain Services (AD DS) architecture, Additional Domain Controller (ADC) promotion, domain replication, and automated FSMO Roles transfer using PowerShell.

---

## 📌 Project Overview
* **Primary Domain Controller (DC1):** Initial root domain setup (`corp.local`).
* **Additional Domain Controller (DC2):** Joined existing domain, validated replication, and promoted to Active Directory Domain Controller.
* **FSMO Role Migration:** Executed seamless transfer of all 5 Flexible Single Master Operation (FSMO) roles from `DC1` to `DC2` via PowerShell.
* **High Availability & Redundancy:** Ensured zero downtime and full Active Directory database synchronization.

## 🛠️ Tech Stack & Key Concepts
* **OS:** Windows Server 2022 / 2019
* **Services:** AD DS, DNS, DHCP
* **Automation & Management:** Windows PowerShell, Active Directory Administrative Center (ADAC)
* **Core Skills:** FSMO Transfer/Seizing, NTDS Replication, Domain Promotion, Disaster Recovery

## 💻 PowerShell Commands Executed

Get-ADDomain | Select-Object SchemaMaster, DomainNamingMaster, RIDMaster, PDCEmulator, InfrastructureMaster

Move-ADDirectoryServerOperationMasterRole -Identity "DC2" -OperationMasterRole SchemaMaster, DomainNamingMaster, RIDMaster, PDCEmulator, InfrastructureMaster -Force

---

<div dir="rtl">

# 🏢 پیاده‌سازی سازمانی اکتیو دایرکتوری و انتقال نقش‌های FSMO

این پروژه شامل پیاده‌سازی حرفه‌ای سرویس Active Directory Domain Services (AD DS)، افزودن Domain Controller دوم (ADC)، همگام‌سازی دیتابیس و انتقال خودکار و امن تمامی ۵ نقش FSMO با استفاده از PowerShell در محیط آزمایشگاهی سازمانی است.

### 📌 خلاصه‌ای از اقدامات انجام‌شده:
* **راه‌اندازی Domain Controller اصلی (DC1):** ایجاد و پیکربندی دامین اصلی.
* **افزودن Additional Domain Controller (DC2):** اتصال DC دوم به دامین، تایید فرآیند Replication و ارتقا به Domain Controller.
* **انتقال نقش‌های FSMO:** انتقال موفقیت‌آمیز و بدون قطعیِ هر ۵ نقش کلیدی FSMO از `DC1` به `DC2` از طریق اسکریپت‌نویسی PowerShell.
* **تضمین پایداری شبکه (High Availability):** ساخت زیرساخت پشتیبان جهت جلوگیری از Single Point of Failure در لایه هویت سازمان.

### 🛠️ تکنولوژی‌ها و مهارت‌های به‌کاررفته:
* **سیستم‌عامل:** Windows Server
* **سرویس‌های شبکه:** AD DS, DNS, DHCP
* **ابزارهای مدیریت:** Windows PowerShell, Active Directory Module
* **مفاهیم کلیدی:** FSMO Transfer/Seizing, NTDS Replication, Disaster Recovery, Infrastructure Redundancy

</div>
