.class Lorg/flerovium/settings/wifi/WifiStatusTest$4;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WifiStatusTest;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WifiStatusTest;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$4;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$4;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    # getter for: Lorg/flerovium/settings/wifi/WifiStatusTest;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WifiStatusTest;->access$1800(Lorg/flerovium/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$4;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    # getter for: Lorg/flerovium/settings/wifi/WifiStatusTest;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WifiStatusTest;->access$1700(Lorg/flerovium/settings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$4;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    # getter for: Lorg/flerovium/settings/wifi/WifiStatusTest;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WifiStatusTest;->access$2000(Lorg/flerovium/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$4;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    # getter for: Lorg/flerovium/settings/wifi/WifiStatusTest;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WifiStatusTest;->access$1900(Lorg/flerovium/settings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$4;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    # getter for: Lorg/flerovium/settings/wifi/WifiStatusTest;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WifiStatusTest;->access$2200(Lorg/flerovium/settings/wifi/WifiStatusTest;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$4;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    # getter for: Lorg/flerovium/settings/wifi/WifiStatusTest;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WifiStatusTest;->access$2100(Lorg/flerovium/settings/wifi/WifiStatusTest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method
