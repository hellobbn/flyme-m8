.class Lorg/flerovium/settings/MasterClear$5;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/MasterClear;->onResume()V
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
    .line 245
    iput-object p1, p0, Lorg/flerovium/settings/MasterClear$5;->this$0:Lorg/flerovium/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    iget-object v0, p0, Lorg/flerovium/settings/MasterClear$5;->this$0:Lorg/flerovium/settings/MasterClear;

    invoke-virtual {v0}, Lorg/flerovium/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 249
    return-void
.end method
