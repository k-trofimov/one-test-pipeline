import os

from fal import FalDbt
import pandas as pd

CREDIT_TRAIN_FILE_PATH="./data/credit_train.csv"

faldbt = FalDbt(profiles_dir=os.getenv("PROJECT_DIR"),
                project_dir=os.getenv("PROFILES_DIR"))

faldbt.write_to_source(data=pd.read_csv(filepath_or_buffer=CREDIT_TRAIN_FILE_PATH),
                       target_source_name=os.getenv("RAW_STAGE_SCHEMA"),
                       target_table_name=os.getenv("RAW_CREDIT_TRAIN_TABLE"),
                       mode="replace")