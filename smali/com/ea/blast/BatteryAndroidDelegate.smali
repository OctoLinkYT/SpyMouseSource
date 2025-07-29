.class public Lcom/ea/blast/BatteryAndroidDelegate;
.super Ljava/lang/Object;
.source "BatteryAndroidDelegate.java"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Lcom/ea/blast/BatteryAndroidDelegate$1;

    invoke-direct {v1, p0}, Lcom/ea/blast/BatteryAndroidDelegate$1;-><init>(Lcom/ea/blast/BatteryAndroidDelegate;)V

    iput-object v1, p0, Lcom/ea/blast/BatteryAndroidDelegate;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v2, p0, Lcom/ea/blast/BatteryAndroidDelegate;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/ea/blast/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    return-void
.end method


# virtual methods
.method public native NativeOnBatteryLevelChanged(F)V
.end method

.method public native NativeOnPowerConnected()V
.end method

.method public native NativeOnPowerDisconnected()V
.end method

.method protected finnish()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/ea/blast/MainActivity;->instance:Lcom/ea/blast/MainActivity;

    iget-object v1, p0, Lcom/ea/blast/BatteryAndroidDelegate;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/ea/blast/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 30
    return-void
.end method
