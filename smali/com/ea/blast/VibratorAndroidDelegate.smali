.class public Lcom/ea/blast/VibratorAndroidDelegate;
.super Ljava/lang/Object;
.source "VibratorAndroidDelegate.java"


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    .line 16
    return-void
.end method


# virtual methods
.method Cancel()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 41
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "EAMCore"

    const-string v2, "Missing permission: android.permission.VIBRATE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method Vibrate(I)V
    .locals 4
    .param p1, "timeMs"    # I

    .prologue
    .line 23
    :try_start_0
    iget-object v1, p0, Lcom/ea/blast/VibratorAndroidDelegate;->mVibrator:Landroid/os/Vibrator;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 25
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 28
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "EAMCore"

    const-string v2, "Missing permission: android.permission.VIBRATE"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
