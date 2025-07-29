.class Lcom/ea/blast/NotificationAndroid;
.super Ljava/lang/Object;
.source "NotificationAndroid.java"


# static fields
.field private static final LOG_ERROR_ENABLED:Z = false

.field private static final LOG_INFO_ENABLED:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "EAMCore/NotificationAndroid"

.field private static final REGISTER_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field private static final SENDER_EMAIL:Ljava/lang/String; = "eamobile.synergy@gmail.com"

.field private static final UNREGISTER_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.UNREGISTER"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private LogError(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    return-void
.end method

.method private LogInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 74
    return-void
.end method


# virtual methods
.method public RegisterApplicationForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 32
    const-string v2, "RegisterApplicationForNotifications - Starting Registration Service"

    invoke-direct {p0, v2}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    .line 37
    .local v0, "mainActivity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "registrationIntent":Landroid/content/Intent;
    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 39
    const-string v2, "sender"

    const-string v3, "eamobile.synergy@gmail.com"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 41
    return-void
.end method

.method public UnregisterApplicationForNotifications()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 47
    const-string v2, "UnregisterApplicationForNotifications - Starting Unregistration Service"

    invoke-direct {p0, v2}, Lcom/ea/blast/NotificationAndroid;->LogInfo(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    .line 52
    .local v0, "mainActivity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "unregistrationIntent":Landroid/content/Intent;
    const-string v2, "app"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v4, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    return-void
.end method
