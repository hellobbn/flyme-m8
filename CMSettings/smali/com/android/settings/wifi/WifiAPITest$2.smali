.class Lorg/flerovium/settings/wifi/WifiAPITest$2;
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


# direct methods
.method constructor <init>(Lorg/flerovium/settings/wifi/WifiAPITest;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lorg/flerovium/settings/wifi/WifiAPITest$2;->this$0:Lorg/flerovium/settings/wifi/WifiAPITest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 120
    return-void
.end method
