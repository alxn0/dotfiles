# Configuration file for ipython.
# Use to configure stuff through class attribute
# Such as c.InteractiveShell.automagic = False

c = get_config()  #noqa

# ----- Change tb highlight
try:
    from IPython.core import ultratb
    ultratb.VerboseTB._tb_highlight = "bg:ansired"
except Exception:
    print("Error patching background color for tracebacks, they'll be the ugly default instead")
