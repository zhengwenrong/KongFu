package org.wenrong.kongfu.pojo;

import java.util.ArrayList;
import java.util.List;

public class MemuExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MemuExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andMemuidIsNull() {
            addCriterion("memuId is null");
            return (Criteria) this;
        }

        public Criteria andMemuidIsNotNull() {
            addCriterion("memuId is not null");
            return (Criteria) this;
        }

        public Criteria andMemuidEqualTo(String value) {
            addCriterion("memuId =", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidNotEqualTo(String value) {
            addCriterion("memuId <>", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidGreaterThan(String value) {
            addCriterion("memuId >", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidGreaterThanOrEqualTo(String value) {
            addCriterion("memuId >=", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidLessThan(String value) {
            addCriterion("memuId <", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidLessThanOrEqualTo(String value) {
            addCriterion("memuId <=", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidLike(String value) {
            addCriterion("memuId like", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidNotLike(String value) {
            addCriterion("memuId not like", value, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidIn(List<String> values) {
            addCriterion("memuId in", values, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidNotIn(List<String> values) {
            addCriterion("memuId not in", values, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidBetween(String value1, String value2) {
            addCriterion("memuId between", value1, value2, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemuidNotBetween(String value1, String value2) {
            addCriterion("memuId not between", value1, value2, "memuid");
            return (Criteria) this;
        }

        public Criteria andMemunameIsNull() {
            addCriterion("memuName is null");
            return (Criteria) this;
        }

        public Criteria andMemunameIsNotNull() {
            addCriterion("memuName is not null");
            return (Criteria) this;
        }

        public Criteria andMemunameEqualTo(String value) {
            addCriterion("memuName =", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameNotEqualTo(String value) {
            addCriterion("memuName <>", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameGreaterThan(String value) {
            addCriterion("memuName >", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameGreaterThanOrEqualTo(String value) {
            addCriterion("memuName >=", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameLessThan(String value) {
            addCriterion("memuName <", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameLessThanOrEqualTo(String value) {
            addCriterion("memuName <=", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameLike(String value) {
            addCriterion("memuName like", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameNotLike(String value) {
            addCriterion("memuName not like", value, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameIn(List<String> values) {
            addCriterion("memuName in", values, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameNotIn(List<String> values) {
            addCriterion("memuName not in", values, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameBetween(String value1, String value2) {
            addCriterion("memuName between", value1, value2, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemunameNotBetween(String value1, String value2) {
            addCriterion("memuName not between", value1, value2, "memuname");
            return (Criteria) this;
        }

        public Criteria andMemupriceIsNull() {
            addCriterion("memuPrice is null");
            return (Criteria) this;
        }

        public Criteria andMemupriceIsNotNull() {
            addCriterion("memuPrice is not null");
            return (Criteria) this;
        }

        public Criteria andMemupriceEqualTo(Double value) {
            addCriterion("memuPrice =", value, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceNotEqualTo(Double value) {
            addCriterion("memuPrice <>", value, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceGreaterThan(Double value) {
            addCriterion("memuPrice >", value, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceGreaterThanOrEqualTo(Double value) {
            addCriterion("memuPrice >=", value, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceLessThan(Double value) {
            addCriterion("memuPrice <", value, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceLessThanOrEqualTo(Double value) {
            addCriterion("memuPrice <=", value, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceIn(List<Double> values) {
            addCriterion("memuPrice in", values, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceNotIn(List<Double> values) {
            addCriterion("memuPrice not in", values, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceBetween(Double value1, Double value2) {
            addCriterion("memuPrice between", value1, value2, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemupriceNotBetween(Double value1, Double value2) {
            addCriterion("memuPrice not between", value1, value2, "memuprice");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlIsNull() {
            addCriterion("memuImageUrl is null");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlIsNotNull() {
            addCriterion("memuImageUrl is not null");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlEqualTo(String value) {
            addCriterion("memuImageUrl =", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlNotEqualTo(String value) {
            addCriterion("memuImageUrl <>", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlGreaterThan(String value) {
            addCriterion("memuImageUrl >", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlGreaterThanOrEqualTo(String value) {
            addCriterion("memuImageUrl >=", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlLessThan(String value) {
            addCriterion("memuImageUrl <", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlLessThanOrEqualTo(String value) {
            addCriterion("memuImageUrl <=", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlLike(String value) {
            addCriterion("memuImageUrl like", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlNotLike(String value) {
            addCriterion("memuImageUrl not like", value, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlIn(List<String> values) {
            addCriterion("memuImageUrl in", values, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlNotIn(List<String> values) {
            addCriterion("memuImageUrl not in", values, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlBetween(String value1, String value2) {
            addCriterion("memuImageUrl between", value1, value2, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemuimageurlNotBetween(String value1, String value2) {
            addCriterion("memuImageUrl not between", value1, value2, "memuimageurl");
            return (Criteria) this;
        }

        public Criteria andMemucategoryIsNull() {
            addCriterion("memuCategory is null");
            return (Criteria) this;
        }

        public Criteria andMemucategoryIsNotNull() {
            addCriterion("memuCategory is not null");
            return (Criteria) this;
        }

        public Criteria andMemucategoryEqualTo(Integer value) {
            addCriterion("memuCategory =", value, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryNotEqualTo(Integer value) {
            addCriterion("memuCategory <>", value, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryGreaterThan(Integer value) {
            addCriterion("memuCategory >", value, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryGreaterThanOrEqualTo(Integer value) {
            addCriterion("memuCategory >=", value, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryLessThan(Integer value) {
            addCriterion("memuCategory <", value, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryLessThanOrEqualTo(Integer value) {
            addCriterion("memuCategory <=", value, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryIn(List<Integer> values) {
            addCriterion("memuCategory in", values, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryNotIn(List<Integer> values) {
            addCriterion("memuCategory not in", values, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryBetween(Integer value1, Integer value2) {
            addCriterion("memuCategory between", value1, value2, "memucategory");
            return (Criteria) this;
        }

        public Criteria andMemucategoryNotBetween(Integer value1, Integer value2) {
            addCriterion("memuCategory not between", value1, value2, "memucategory");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}