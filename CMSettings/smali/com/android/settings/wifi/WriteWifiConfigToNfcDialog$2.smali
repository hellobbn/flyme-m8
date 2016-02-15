.class Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog$2;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog$2;->this$0:Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog$2;->this$0:Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;

    # getter for: Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;->access$100(Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 182
    return-void
.end method
