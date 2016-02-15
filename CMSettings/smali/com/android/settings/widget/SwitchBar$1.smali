.class Lorg/flerovium/settings/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lorg/flerovium/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/widget/SwitchBar;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/widget/SwitchBar;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lorg/flerovium/settings/widget/SwitchBar$1;->this$0:Lorg/flerovium/settings/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lorg/flerovium/settings/widget/SwitchBar$1;->this$0:Lorg/flerovium/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lorg/flerovium/settings/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 100
    return-void
.end method
