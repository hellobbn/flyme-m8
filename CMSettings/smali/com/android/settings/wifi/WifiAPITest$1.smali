.class Lorg/flerovium/settings/wifi/WifiAPITest$1;
.super Ljava/lang/Object;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/wifi/WifiAPITest;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/wifi/WifiAPITest;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WifiAPITest$1;->this$0:Lorg/flerovium/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lorg/flerovium/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 112
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 113
    .local v0, "value":Landroid/text/Editable;
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WifiAPITest$1;->this$0:Lorg/flerovium/settings/wifi/WifiAPITest;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lorg/flerovium/settings/wifi/WifiAPITest;->netid:I
    invoke-static {v1, v2}, Lorg/flerovium/settings/wifi/WifiAPITest;->access$002(Lorg/flerovium/settings/wifi/WifiAPITest;I)I

    .line 114
    iget-object v1, p0, Lorg/flerovium/settings/wifi/WifiAPITest$1;->this$0:Lorg/flerovium/settings/wifi/WifiAPITest;

    # getter for: Lorg/flerovium/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Lorg/flerovium/settings/wifi/WifiAPITest;->access$100(Lorg/flerovium/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lorg/flerovium/settings/wifi/WifiAPITest$1;->this$0:Lorg/flerovium/settings/wifi/WifiAPITest;

    # getter for: Lorg/flerovium/settings/wifi/WifiAPITest;->netid:I
    invoke-static {v2}, Lorg/flerovium/settings/wifi/WifiAPITest;->access$000(Lorg/flerovium/settings/wifi/WifiAPITest;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 115
    return-void
.end method