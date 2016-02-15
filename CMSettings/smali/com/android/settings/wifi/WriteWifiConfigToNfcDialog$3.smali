.class Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog$3;
.super Ljava/lang/Object;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;->onTextChanged(Ljava/lang/CharSequence;III)V
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
    .line 216
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog$3;->this$0:Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;

    # invokes: Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;->enableSubmitIfAppropriate()V
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;->access$200(Lorg/flerovium/settings/wifi/WriteWifiConfigToNfcDialog;)V

    .line 220
    return-void
.end method
