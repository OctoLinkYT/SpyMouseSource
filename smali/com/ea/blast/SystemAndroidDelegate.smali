.class public Lcom/ea/blast/SystemAndroidDelegate;
.super Ljava/lang/Object;
.source "SystemAndroidDelegate.java"


# static fields
.field private static final kInputDeviceStr:Ljava/lang/String; = "android.view.InputDevice"


# instance fields
.field private kClass_InputDevice:Z

.field private final mMainActivity:Lcom/ea/blast/MainActivity;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    .line 35
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iput-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    .line 36
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v0}, Lcom/ea/blast/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 37
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v1}, Lcom/ea/blast/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    :try_start_1
    const-string v0, "android.view.InputDevice"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 51
    :goto_1
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_1

    .line 43
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public GetAccelerometerCount()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.sensor.accelerometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 213
    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetApiLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public GetApplicationVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public GetApplicationVersionCode()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public GetCameraCount()I
    .locals 3

    .prologue
    .line 340
    const/4 v0, 0x0

    .line 342
    .local v0, "count":I
    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.camera"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    add-int/lit8 v0, v0, 0x1

    .line 347
    :cond_0
    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.camera.front"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    add-int/lit8 v0, v0, 0x1

    .line 352
    :cond_1
    return v0
.end method

.method public GetChipset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, ""

    return-object v0
.end method

.method public GetCompassCount()I
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.sensor.compass"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public GetDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    return-object v0
.end method

.method public GetDeviceSubscriberID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "suscriberId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 84
    const-string v1, ""

    .line 87
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public GetDeviceUniqueId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 106
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "-1"

    goto :goto_0
.end method

.method public GetFirmware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public GetGyroscopeCount()I
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.sensor.gyroscope"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetHardwareFloatingPointSupport()Ljava/lang/String;
    .locals 7

    .prologue
    .line 172
    const-string v4, "false"

    .line 174
    .local v4, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 178
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    const/16 v5, 0x200

    :try_start_1
    new-array v0, v5, [B

    .line 181
    .local v0, "buffer":[B
    :cond_0
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 183
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 186
    .local v1, "cpuInfo":Ljava/lang/String;
    const-string v5, "[\\s\\S]*Features.*vfp(v3)?[\\s\\S]*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 187
    const-string v4, "true"

    goto :goto_0

    .line 189
    .end local v1    # "cpuInfo":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 195
    .end local v0    # "buffer":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_1
    return-object v4

    .line 191
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public GetLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public GetMicrophoneCount()I
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetPhoneNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/SystemAndroidDelegate;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 138
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, ""

    goto :goto_0
.end method

.method public GetPlatformVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public GetProcessorArchitecture()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 163
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public GetTouchPadCount()I
    .locals 9

    .prologue
    const v8, 0x100008

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "count":I
    iget-boolean v7, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    if-eqz v7, :cond_1

    .line 270
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 272
    .local v2, "deviceIds":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 274
    .local v4, "id":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 275
    .local v5, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_0

    .line 277
    add-int/lit8 v1, v1, 0x1

    .line 272
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v0    # "arr$":[I
    .end local v2    # "deviceIds":[I
    .end local v3    # "i$":I
    .end local v4    # "id":I
    .end local v5    # "inputDevice":Landroid/view/InputDevice;
    .end local v6    # "len$":I
    :cond_1
    return v1
.end method

.method public GetTouchScreenCount()I
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 288
    iget-boolean v7, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    if-eqz v7, :cond_2

    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, "count":I
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 294
    .local v2, "deviceIds":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 296
    .local v4, "id":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 297
    .local v5, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    and-int/lit16 v7, v7, 0x1002

    const/16 v8, 0x1002

    if-ne v7, v8, :cond_0

    .line 299
    add-int/lit8 v1, v1, 0x1

    .line 294
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4    # "id":I
    .end local v5    # "inputDevice":Landroid/view/InputDevice;
    :cond_1
    move v7, v1

    .line 311
    .end local v0    # "arr$":[I
    .end local v1    # "count":I
    .end local v2    # "deviceIds":[I
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    :goto_1
    return v7

    .line 305
    :cond_2
    iget-object v7, p0, Lcom/ea/blast/SystemAndroidDelegate;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.touchscreen"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    .line 307
    goto :goto_1

    .line 311
    :cond_3
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-ge v7, v8, :cond_4

    move v7, v9

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public GetTrackBallCount()I
    .locals 9

    .prologue
    const v8, 0x10004

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, "count":I
    iget-boolean v7, p0, Lcom/ea/blast/SystemAndroidDelegate;->kClass_InputDevice:Z

    if-eqz v7, :cond_1

    .line 322
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    .line 324
    .local v2, "deviceIds":[I
    move-object v0, v2

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget v4, v0, v3

    .line 326
    .local v4, "id":I
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 327
    .local v5, "inputDevice":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getSources()I

    move-result v7

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_0

    .line 329
    add-int/lit8 v1, v1, 0x1

    .line 324
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "arr$":[I
    .end local v2    # "deviceIds":[I
    .end local v3    # "i$":I
    .end local v4    # "id":I
    .end local v5    # "inputDevice":Landroid/view/InputDevice;
    .end local v6    # "len$":I
    :cond_1
    return v1
.end method

.method public GetVibratorCount()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 232
    iget-object v4, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 235
    .local v2, "systemVibrator":Landroid/os/Vibrator;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_1

    .line 240
    const/4 v4, 0x0

    :try_start_0
    new-array v0, v4, [Ljava/lang/Class;

    .line 241
    .local v0, "args1":[Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "hasVibrator"

    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 244
    .local v3, "vibratorMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    .line 245
    .local v1, "args2":[Ljava/lang/Object;
    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "args1":[Ljava/lang/Class;
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    .line 260
    .end local v1    # "args2":[Ljava/lang/Object;
    .end local v3    # "vibratorMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .restart local v1    # "args2":[Ljava/lang/Object;
    .restart local v3    # "vibratorMethod":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v6

    .line 251
    goto :goto_0

    .line 254
    .end local v1    # "args2":[Ljava/lang/Object;
    .end local v3    # "vibratorMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    :cond_1
    move v4, v7

    .line 260
    goto :goto_0
.end method

.method public IntentView(Ljava/lang/String;)Z
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 367
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 368
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/ea/blast/SystemAndroidDelegate;->mMainActivity:Lcom/ea/blast/MainActivity;

    invoke-virtual {v2, v0}, Lcom/ea/blast/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    const/4 v2, 0x1

    .line 373
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 371
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 373
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method
