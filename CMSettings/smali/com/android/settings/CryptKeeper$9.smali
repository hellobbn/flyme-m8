.class Lorg/flerovium/settings/CryptKeeper$9;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/CryptKeeper;->updateEmergencyCallButtonState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lorg/flerovium/settings/CryptKeeper$9;->this$0:Lorg/flerovium/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 979
    iget-object v0, p0, Lorg/flerovium/settings/CryptKeeper$9;->this$0:Lorg/flerovium/settings/CryptKeeper;

    # invokes: Lorg/flerovium/settings/CryptKeeper;->takeEmergencyCallAction()V
    invoke-static {v0}, Lorg/flerovium/settings/CryptKeeper;->access$2300(Lorg/flerovium/settings/CryptKeeper;)V

    .line 980
    return-void
.end method
