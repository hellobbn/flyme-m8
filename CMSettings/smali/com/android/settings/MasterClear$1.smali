.class Lorg/flerovium/settings/MasterClear$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/MasterClear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/MasterClear;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/MasterClear;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lorg/flerovium/settings/MasterClear$1;->this$0:Lorg/flerovium/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 128
    iget-object v0, p0, Lorg/flerovium/settings/MasterClear$1;->this$0:Lorg/flerovium/settings/MasterClear;

    const/16 v1, 0x37

    # invokes: Lorg/flerovium/settings/MasterClear;->runKeyguardConfirmation(I)Z
    invoke-static {v0, v1}, Lorg/flerovium/settings/MasterClear;->access$000(Lorg/flerovium/settings/MasterClear;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lorg/flerovium/settings/MasterClear$1;->this$0:Lorg/flerovium/settings/MasterClear;

    # invokes: Lorg/flerovium/settings/MasterClear;->showFinalConfirmation()V
    invoke-static {v0}, Lorg/flerovium/settings/MasterClear;->access$100(Lorg/flerovium/settings/MasterClear;)V

    .line 131
    :cond_0
    return-void
.end method
