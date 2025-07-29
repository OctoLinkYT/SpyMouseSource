.class public Lcom/eamobile/drm/CarrierDRM;
.super Ljava/lang/Object;
.source "CarrierDRM.java"


# static fields
.field protected static final RESOURCES_PATH:Ljava/lang/String; = "multilang/"

.field public static drmAlert:Landroid/app/AlertDialog;

.field private static instance:Landroid/app/Activity;

.field public static isOnAlert:Z

.field protected static language:Lcom/eamobile/drm/Language;


# instance fields
.field private DRM_DONE:Z

.field private Device_IMEI:Ljava/lang/String;

.field private FILENAME:Ljava/lang/String;

.field private GameExtraID:Ljava/lang/String;

.field file:Ljava/io/File;

.field mExternalStorageAvailable:Z

.field mExternalStorageWriteable:Z

.field private mFilePath:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mSavedIMEI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/eamobile/drm/CarrierDRM;->isOnAlert:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aInstance"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v5, "filename"

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->FILENAME:Ljava/lang/String;

    .line 56
    const-string v5, "NewGameID"

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->GameExtraID:Ljava/lang/String;

    .line 59
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->file:Ljava/io/File;

    .line 61
    const-string v5, "/Android/data/"

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->mFilePath:Ljava/lang/String;

    .line 64
    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageAvailable:Z

    .line 65
    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageWriteable:Z

    .line 68
    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->DRM_DONE:Z

    .line 74
    const-string v5, "en"

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->mLocale:Ljava/lang/String;

    .line 89
    invoke-static {p2}, Lcom/eamobile/drm/CarrierDRM;->setInstance(Landroid/app/Activity;)V

    .line 90
    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->DRM_DONE:Z

    .line 91
    sget-object v5, Lcom/eamobile/drm/CarrierDRM;->language:Lcom/eamobile/drm/Language;

    if-nez v5, :cond_0

    .line 93
    new-instance v5, Lcom/eamobile/drm/Language;

    invoke-direct {v5}, Lcom/eamobile/drm/Language;-><init>()V

    sput-object v5, Lcom/eamobile/drm/CarrierDRM;->language:Lcom/eamobile/drm/Language;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->mLocale:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "deviceLanguage":Ljava/lang/String;
    sget-object v5, Lcom/eamobile/drm/CarrierDRM;->language:Lcom/eamobile/drm/Language;

    iget-object v6, p0, Lcom/eamobile/drm/CarrierDRM;->mLocale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/eamobile/drm/Language;->loadStrings(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 104
    sget-object v5, Lcom/eamobile/drm/CarrierDRM;->language:Lcom/eamobile/drm/Language;

    invoke-virtual {v5, v2}, Lcom/eamobile/drm/Language;->loadStrings(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 106
    const-string v5, "en"

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->mLocale:Ljava/lang/String;

    .line 107
    sget-object v5, Lcom/eamobile/drm/CarrierDRM;->language:Lcom/eamobile/drm/Language;

    const-string v6, "en"

    invoke-virtual {v5, v6}, Lcom/eamobile/drm/Language;->loadStrings(Ljava/lang/String;)Z

    .line 113
    .end local v2    # "deviceLanguage":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 114
    .local v3, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/eamobile/drm/CarrierDRM;->GameExtraID:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->Device_IMEI:Ljava/lang/String;

    .line 117
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "state":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 121
    iput-boolean v8, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageWriteable:Z

    iput-boolean v8, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageAvailable:Z

    .line 139
    :goto_0
    iget-boolean v5, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageWriteable:Z

    if-eqz v5, :cond_1

    .line 141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/eamobile/drm/CarrierDRM;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/files"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "appDirectory":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 148
    new-instance v5, Ljava/io/File;

    const-string v6, "filename"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->file:Ljava/io/File;

    .line 153
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v1    # "appDirectory":Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Lcom/eamobile/drm/CarrierDRM;->restoreHashKey()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 154
    iget-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->mSavedIMEI:Ljava/lang/String;

    iget-object v6, p0, Lcom/eamobile/drm/CarrierDRM;->Device_IMEI:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/eamobile/drm/CarrierDRM;->compareMd5Hash(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 156
    sget-object v5, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 157
    invoke-static {}, Lcom/eamobile/drm/CarrierDRM;->showAlert()V

    .line 158
    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->DRM_DONE:Z

    .line 172
    :goto_1
    return-void

    .line 123
    :cond_2
    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 126
    iput-boolean v8, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageAvailable:Z

    .line 127
    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageWriteable:Z

    goto :goto_0

    .line 133
    :cond_3
    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageWriteable:Z

    iput-boolean v7, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageAvailable:Z

    goto :goto_0

    .line 162
    :cond_4
    iput-boolean v8, p0, Lcom/eamobile/drm/CarrierDRM;->DRM_DONE:Z

    goto :goto_1

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/eamobile/drm/CarrierDRM;->saveHashKey()V

    .line 169
    iput-boolean v8, p0, Lcom/eamobile/drm/CarrierDRM;->DRM_DONE:Z

    goto :goto_1
.end method

.method static synthetic access$0()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    return-object v0
.end method

.method public static compareMd5Hash(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "savedHash"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p1}, Lcom/eamobile/drm/CarrierDRM;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "Hash_actual":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const/4 v1, 0x1

    .line 184
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getInstance()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    return-object v0
.end method

.method public static getMd5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 232
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 233
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 234
    .local v3, "messageDigest":[B
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 235
    .local v4, "number":Ljava/math/BigInteger;
    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "md5":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_0

    move-object v5, v2

    .line 242
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "messageDigest":[B
    .end local v4    # "number":Ljava/math/BigInteger;
    :goto_1
    return-object v5

    .line 238
    .restart local v1    # "md":Ljava/security/MessageDigest;
    .restart local v2    # "md5":Ljava/lang/String;
    .restart local v3    # "messageDigest":[B
    .restart local v4    # "number":Ljava/math/BigInteger;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 241
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "messageDigest":[B
    .end local v4    # "number":Ljava/math/BigInteger;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 242
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 190
    sget-boolean v0, Lcom/eamobile/drm/CarrierDRM;->isOnAlert:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {}, Lcom/eamobile/drm/CarrierDRM;->showAlert()V

    .line 193
    :cond_0
    return-void
.end method

.method private restoreHashKey()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 273
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .local v3, "inb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 277
    .local v2, "fis":Ljava/io/FileInputStream;
    iget-boolean v4, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageAvailable:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageWriteable:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/eamobile/drm/CarrierDRM;->file:Ljava/io/File;

    if-eqz v4, :cond_0

    .line 278
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2    # "fis":Ljava/io/FileInputStream;
    iget-object v4, p0, Lcom/eamobile/drm/CarrierDRM;->file:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 285
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v2, :cond_2

    .line 287
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .local v0, "ch":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 289
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 296
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/eamobile/drm/CarrierDRM;->mSavedIMEI:Ljava/lang/String;

    .line 298
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 299
    const/4 v4, 0x1

    .line 301
    .end local v0    # "ch":I
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "inb":Ljava/lang/StringBuilder;
    :goto_2
    return v4

    .line 282
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "inb":Ljava/lang/StringBuilder;
    :cond_0
    sget-object v4, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    iget-object v5, p0, Lcom/eamobile/drm/CarrierDRM;->FILENAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    goto :goto_0

    .line 288
    .restart local v0    # "ch":I
    :cond_1
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 300
    .end local v0    # "ch":I
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "inb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, "e":Ljava/lang/Exception;
    move v4, v6

    .line 301
    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "inb":Ljava/lang/StringBuilder;
    :cond_2
    move v4, v6

    .line 293
    goto :goto_2
.end method

.method protected static setInstance(Landroid/app/Activity;)V
    .locals 0
    .param p0, "aInstance"    # Landroid/app/Activity;

    .prologue
    .line 83
    sput-object p0, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    .line 84
    return-void
.end method

.method public static showAlert()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 197
    sput-boolean v2, Lcom/eamobile/drm/CarrierDRM;->isOnAlert:Z

    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    .line 199
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 200
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/eamobile/drm/Language;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    invoke-static {v2}, Lcom/eamobile/drm/Language;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 203
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    new-instance v1, Lcom/eamobile/drm/CarrierDRM$1;

    invoke-direct {v1}, Lcom/eamobile/drm/CarrierDRM$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 215
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/eamobile/drm/Language;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/eamobile/drm/CarrierDRM$2;

    invoke-direct {v2}, Lcom/eamobile/drm/CarrierDRM$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 226
    sget-object v0, Lcom/eamobile/drm/CarrierDRM;->drmAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 227
    return-void
.end method


# virtual methods
.method public isDRMDone()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/eamobile/drm/CarrierDRM;->DRM_DONE:Z

    return v0
.end method

.method public saveHashKey()V
    .locals 4

    .prologue
    .line 251
    :try_start_0
    iget-boolean v1, p0, Lcom/eamobile/drm/CarrierDRM;->mExternalStorageWriteable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/eamobile/drm/CarrierDRM;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 252
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/eamobile/drm/CarrierDRM;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 253
    .local v0, "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/eamobile/drm/CarrierDRM;->Device_IMEI:Ljava/lang/String;

    invoke-static {v1}, Lcom/eamobile/drm/CarrierDRM;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 254
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 266
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 257
    :cond_0
    sget-object v1, Lcom/eamobile/drm/CarrierDRM;->instance:Landroid/app/Activity;

    iget-object v2, p0, Lcom/eamobile/drm/CarrierDRM;->FILENAME:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 258
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    iget-object v1, p0, Lcom/eamobile/drm/CarrierDRM;->Device_IMEI:Ljava/lang/String;

    invoke-static {v1}, Lcom/eamobile/drm/CarrierDRM;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 259
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
