.class Lorg/flerovium/settings/wifi/WifiStatusTest$2;
.super Ljava/lang/Object;
.source "WifiStatusTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/wifi/WifiStatusTest;
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
    .line 175
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$2;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/flerovium/settings/wifi/WifiStatusTest$2;->this$0:Lorg/flerovium/settings/wifi/WifiStatusTest;

    # invokes: Lorg/flerovium/settings/wifi/WifiStatusTest;->updatePingState()V
    invoke-static {v0}, Lorg/flerovium/settings/wifi/WifiStatusTest;->access$500(Lorg/flerovium/settings/wifi/WifiStatusTest;)V

    .line 178
    return-void
.end method
