.class Lorg/flerovium/settings/blacklist/EntryEditDialogFragment$1;
.super Ljava/lang/Object;
.source "EntryEditDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/flerovium/settings/blacklist/EntryEditDialogFragment$1;->this$0:Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v1, p0, Lorg/flerovium/settings/blacklist/EntryEditDialogFragment$1;->this$0:Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;

    .line 117
    .local v1, "parent":Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;
    invoke-static {v1}, Lorg/flerovium/settings/blacklist/EntryEditDialogFragment$DeleteConfirmationFragment;->newInstance(Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;)Landroid/app/DialogFragment;

    move-result-object v0

    .line 118
    .local v0, "confirm":Landroid/app/DialogFragment;
    iget-object v2, p0, Lorg/flerovium/settings/blacklist/EntryEditDialogFragment$1;->this$0:Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;

    invoke-virtual {v2}, Lorg/flerovium/settings/blacklist/EntryEditDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "delete_confirm"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    return-void
.end method
