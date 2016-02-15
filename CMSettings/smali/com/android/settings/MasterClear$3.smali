.class Lorg/flerovium/settings/MasterClear$3;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/MasterClear;->establishInitialState()V
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
    .line 198
    iput-object p1, p0, Lorg/flerovium/settings/MasterClear$3;->this$0:Lorg/flerovium/settings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lorg/flerovium/settings/MasterClear$3;->this$0:Lorg/flerovium/settings/MasterClear;

    # getter for: Lorg/flerovium/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;
    invoke-static {v0}, Lorg/flerovium/settings/MasterClear;->access$300(Lorg/flerovium/settings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 202
    return-void
.end method
